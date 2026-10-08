.class public final synthetic Le6;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Le6;->j:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Landroidx/compose/ui/node/ComposeUiNode;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/CompositionLocalMap;

    .line 4
    .line 5
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    .line 6
    .line 7
    iput-object p2, p1, Landroidx/compose/ui/node/LayoutNode;->K:Landroidx/compose/runtime/CompositionLocalMap;

    .line 8
    .line 9
    iget-object p0, p1, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 10
    .line 11
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 12
    .line 13
    move-object v1, p2

    .line 14
    check-cast v1, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v0}, Landroidx/compose/runtime/CompositionLocalMapKt;->a(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroidx/compose/ui/unit/Density;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroidx/compose/ui/node/LayoutNode;->d0(Landroidx/compose/ui/unit/Density;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 29
    .line 30
    check-cast p2, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 31
    .line 32
    invoke-static {p2, v0}, Landroidx/compose/runtime/CompositionLocalMapKt;->a(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroidx/compose/ui/unit/LayoutDirection;

    .line 37
    .line 38
    iget-object v1, p1, Landroidx/compose/ui/node/LayoutNode;->I:Landroidx/compose/ui/unit/LayoutDirection;

    .line 39
    .line 40
    if-eq v1, v0, :cond_2

    .line 41
    .line 42
    iput-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->I:Landroidx/compose/ui/unit/LayoutDirection;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->I()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->G()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 64
    .line 65
    .line 66
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->H()V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 70
    .line 71
    :goto_1
    if-eqz v0, :cond_2

    .line 72
    .line 73
    invoke-interface {v0}, Landroidx/compose/ui/node/DelegatableNode;->W()V

    .line 74
    .line 75
    .line 76
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->t:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 80
    .line 81
    invoke-static {p2, v0}, Landroidx/compose/runtime/CompositionLocalMapKt;->a(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    check-cast p2, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/LayoutNode;->i0(Landroidx/compose/ui/platform/ViewConfiguration;)V

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 91
    .line 92
    iget p1, p0, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 93
    .line 94
    const p2, 0x8000

    .line 95
    .line 96
    .line 97
    and-int/2addr p1, p2

    .line 98
    if-eqz p1, :cond_c

    .line 99
    .line 100
    :goto_2
    if-eqz p0, :cond_c

    .line 101
    .line 102
    iget p1, p0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 103
    .line 104
    and-int/2addr p1, p2

    .line 105
    if-eqz p1, :cond_b

    .line 106
    .line 107
    const/4 p1, 0x0

    .line 108
    move-object v0, p0

    .line 109
    move-object v1, p1

    .line 110
    :goto_3
    if-eqz v0, :cond_b

    .line 111
    .line 112
    instance-of v2, v0, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    .line 113
    .line 114
    const/4 v3, 0x1

    .line 115
    if-eqz v2, :cond_4

    .line 116
    .line 117
    check-cast v0, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    .line 118
    .line 119
    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .line 120
    .line 121
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 122
    .line 123
    iget-boolean v2, v0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 124
    .line 125
    if-eqz v2, :cond_3

    .line 126
    .line 127
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKindKt;->c(Landroidx/compose/ui/Modifier$Node;)V

    .line 128
    .line 129
    .line 130
    goto :goto_6

    .line 131
    :cond_3
    iput-boolean v3, v0, Landroidx/compose/ui/Modifier$Node;->s:Z

    .line 132
    .line 133
    goto :goto_6

    .line 134
    :cond_4
    iget v2, v0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 135
    .line 136
    and-int/2addr v2, p2

    .line 137
    if-eqz v2, :cond_a

    .line 138
    .line 139
    instance-of v2, v0, Landroidx/compose/ui/node/DelegatingNode;

    .line 140
    .line 141
    if-eqz v2, :cond_a

    .line 142
    .line 143
    move-object v2, v0

    .line 144
    check-cast v2, Landroidx/compose/ui/node/DelegatingNode;

    .line 145
    .line 146
    iget-object v2, v2, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 147
    .line 148
    const/4 v4, 0x0

    .line 149
    :goto_4
    if-eqz v2, :cond_9

    .line 150
    .line 151
    iget v5, v2, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 152
    .line 153
    and-int/2addr v5, p2

    .line 154
    if-eqz v5, :cond_8

    .line 155
    .line 156
    add-int/lit8 v4, v4, 0x1

    .line 157
    .line 158
    if-ne v4, v3, :cond_5

    .line 159
    .line 160
    move-object v0, v2

    .line 161
    goto :goto_5

    .line 162
    :cond_5
    if-nez v1, :cond_6

    .line 163
    .line 164
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    .line 165
    .line 166
    const/16 v5, 0x10

    .line 167
    .line 168
    new-array v5, v5, [Landroidx/compose/ui/Modifier$Node;

    .line 169
    .line 170
    invoke-direct {v1, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_6
    if-eqz v0, :cond_7

    .line 174
    .line 175
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    move-object v0, p1

    .line 179
    :cond_7
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    :cond_8
    :goto_5
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_9
    if-ne v4, v3, :cond_a

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_a
    :goto_6
    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    goto :goto_3

    .line 193
    :cond_b
    iget p1, p0, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 194
    .line 195
    and-int/2addr p1, p2

    .line 196
    if-eqz p1, :cond_c

    .line 197
    .line 198
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_c
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 202
    .line 203
    return-object p0
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Le6;->j:I

    .line 4
    .line 5
    const/high16 v2, -0x3f800000    # -4.0f

    .line 6
    .line 7
    const/high16 v5, 0x40e00000    # 7.0f

    .line 8
    .line 9
    const/high16 v6, 0x3fc00000    # 1.5f

    .line 10
    .line 11
    const/high16 v7, 0x41300000    # 11.0f

    .line 12
    .line 13
    const/high16 v8, 0x41a00000    # 20.0f

    .line 14
    .line 15
    const/high16 v10, 0x3f800000    # 1.0f

    .line 16
    .line 17
    const/high16 v11, 0x40c00000    # 6.0f

    .line 18
    .line 19
    const/high16 v12, 0x41b00000    # 22.0f

    .line 20
    .line 21
    const/high16 v13, 0x41800000    # 16.0f

    .line 22
    .line 23
    const/high16 v15, 0x40800000    # 4.0f

    .line 24
    .line 25
    const/16 v16, 0x12

    .line 26
    .line 27
    const/high16 v9, 0x41400000    # 12.0f

    .line 28
    .line 29
    const/16 v17, 0x10

    .line 30
    .line 31
    const/4 v14, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v3, 0x2

    .line 34
    const/16 v18, 0x1

    .line 35
    .line 36
    sget-object v19, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    packed-switch v1, :pswitch_data_0

    .line 39
    .line 40
    .line 41
    move-object/from16 v0, p1

    .line 42
    .line 43
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 44
    .line 45
    move-object/from16 v1, p2

    .line 46
    .line 47
    check-cast v1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 48
    .line 49
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->A(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0

    .line 54
    :pswitch_0
    move-object/from16 v0, p1

    .line 55
    .line 56
    check-cast v0, Ljava/lang/Boolean;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 59
    .line 60
    .line 61
    move-object/from16 v1, p2

    .line 62
    .line 63
    check-cast v1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 64
    .line 65
    return-object v0

    .line 66
    :pswitch_1
    move-object/from16 v0, p1

    .line 67
    .line 68
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 69
    .line 70
    move-object/from16 v1, p2

    .line 71
    .line 72
    check-cast v1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-interface {v1}, Lkotlin/coroutines/CoroutineContext$Element;->getKey()Lkotlin/coroutines/CoroutineContext$Key;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->g0(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->j:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 89
    .line 90
    if-ne v0, v2, :cond_0

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_0
    sget-object v3, Lkotlin/coroutines/ContinuationInterceptor$Key;->j:Lkotlin/coroutines/ContinuationInterceptor$Key;

    .line 94
    .line 95
    invoke-interface {v0, v3}, Lkotlin/coroutines/CoroutineContext;->v(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    check-cast v4, Lkotlin/coroutines/ContinuationInterceptor;

    .line 100
    .line 101
    if-nez v4, :cond_1

    .line 102
    .line 103
    new-instance v2, Lkotlin/coroutines/CombinedContext;

    .line 104
    .line 105
    invoke-direct {v2, v1, v0}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)V

    .line 106
    .line 107
    .line 108
    :goto_0
    move-object v1, v2

    .line 109
    goto :goto_1

    .line 110
    :cond_1
    invoke-interface {v0, v3}, Lkotlin/coroutines/CoroutineContext;->g0(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-ne v0, v2, :cond_2

    .line 115
    .line 116
    new-instance v0, Lkotlin/coroutines/CombinedContext;

    .line 117
    .line 118
    invoke-direct {v0, v4, v1}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)V

    .line 119
    .line 120
    .line 121
    move-object v1, v0

    .line 122
    goto :goto_1

    .line 123
    :cond_2
    new-instance v2, Lkotlin/coroutines/CombinedContext;

    .line 124
    .line 125
    new-instance v3, Lkotlin/coroutines/CombinedContext;

    .line 126
    .line 127
    invoke-direct {v3, v1, v0}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)V

    .line 128
    .line 129
    .line 130
    invoke-direct {v2, v4, v3}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :goto_1
    return-object v1

    .line 135
    :pswitch_2
    move-object/from16 v0, p1

    .line 136
    .line 137
    check-cast v0, Landroidx/compose/ui/node/ComposeUiNode;

    .line 138
    .line 139
    move-object/from16 v1, p2

    .line 140
    .line 141
    check-cast v1, Ljava/lang/Integer;

    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    return-object v19

    .line 152
    :pswitch_3
    move-object/from16 v0, p1

    .line 153
    .line 154
    check-cast v0, Landroidx/compose/ui/node/ComposeUiNode;

    .line 155
    .line 156
    move-object/from16 v1, p2

    .line 157
    .line 158
    check-cast v1, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 159
    .line 160
    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/LayoutNode;->g0(Landroidx/compose/ui/layout/MeasurePolicy;)V

    .line 163
    .line 164
    .line 165
    return-object v19

    .line 166
    :pswitch_4
    invoke-direct/range {p0 .. p2}, Le6;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    return-object v0

    .line 171
    :pswitch_5
    move-object/from16 v0, p1

    .line 172
    .line 173
    check-cast v0, Landroidx/compose/ui/node/ComposeUiNode;

    .line 174
    .line 175
    move-object/from16 v1, p2

    .line 176
    .line 177
    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 178
    .line 179
    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/LayoutNode;->h0(Landroidx/compose/ui/Modifier;)V

    .line 182
    .line 183
    .line 184
    return-object v19

    .line 185
    :pswitch_6
    move-object/from16 v0, p1

    .line 186
    .line 187
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 188
    .line 189
    move-object/from16 v1, p2

    .line 190
    .line 191
    check-cast v1, Ljava/lang/Integer;

    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    and-int/lit8 v2, v1, 0x3

    .line 198
    .line 199
    if-eq v2, v3, :cond_3

    .line 200
    .line 201
    move/from16 v4, v18

    .line 202
    .line 203
    :cond_3
    and-int/lit8 v1, v1, 0x1

    .line 204
    .line 205
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 206
    .line 207
    invoke-virtual {v0, v1, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-eqz v1, :cond_4

    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 215
    .line 216
    .line 217
    :goto_2
    return-object v19

    .line 218
    :pswitch_7
    move-object/from16 v0, p1

    .line 219
    .line 220
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 221
    .line 222
    move-object/from16 v1, p2

    .line 223
    .line 224
    check-cast v1, Ljava/lang/Integer;

    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    and-int/lit8 v2, v1, 0x3

    .line 231
    .line 232
    if-eq v2, v3, :cond_5

    .line 233
    .line 234
    move/from16 v4, v18

    .line 235
    .line 236
    :cond_5
    and-int/lit8 v1, v1, 0x1

    .line 237
    .line 238
    move-object v13, v0

    .line 239
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 240
    .line 241
    invoke-virtual {v13, v1, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-eqz v0, :cond_6

    .line 246
    .line 247
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 248
    .line 249
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 254
    .line 255
    iget-object v0, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 256
    .line 257
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 258
    .line 259
    .line 260
    move-result-wide v23

    .line 261
    const/16 v31, 0x0

    .line 262
    .line 263
    const v32, 0xfffffd

    .line 264
    .line 265
    .line 266
    const-wide/16 v21, 0x0

    .line 267
    .line 268
    const/16 v25, 0x0

    .line 269
    .line 270
    const-wide/16 v26, 0x0

    .line 271
    .line 272
    const-wide/16 v28, 0x0

    .line 273
    .line 274
    const/16 v30, 0x0

    .line 275
    .line 276
    move-object/from16 v20, v0

    .line 277
    .line 278
    invoke-static/range {v20 .. v32}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    const/4 v14, 0x6

    .line 283
    const/16 v15, 0x1fa

    .line 284
    .line 285
    const-string v5, "All transfers will be removed from Blip. The files will remain on your device unless you choose to delete them too."

    .line 286
    .line 287
    const/4 v6, 0x0

    .line 288
    const/4 v8, 0x0

    .line 289
    const/4 v9, 0x0

    .line 290
    const/4 v10, 0x0

    .line 291
    const/4 v11, 0x0

    .line 292
    const/4 v12, 0x0

    .line 293
    invoke-static/range {v5 .. v15}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 294
    .line 295
    .line 296
    goto :goto_3

    .line 297
    :cond_6
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 298
    .line 299
    .line 300
    :goto_3
    return-object v19

    .line 301
    :pswitch_8
    move-object/from16 v0, p1

    .line 302
    .line 303
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 304
    .line 305
    move-object/from16 v1, p2

    .line 306
    .line 307
    check-cast v1, Ljava/lang/Integer;

    .line 308
    .line 309
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    and-int/lit8 v2, v1, 0x3

    .line 314
    .line 315
    if-eq v2, v3, :cond_7

    .line 316
    .line 317
    move/from16 v4, v18

    .line 318
    .line 319
    :cond_7
    and-int/lit8 v1, v1, 0x1

    .line 320
    .line 321
    move-object v13, v0

    .line 322
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 323
    .line 324
    invoke-virtual {v13, v1, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    if-eqz v0, :cond_8

    .line 329
    .line 330
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 331
    .line 332
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 337
    .line 338
    iget-object v0, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->a:Landroidx/compose/ui/text/TextStyle;

    .line 339
    .line 340
    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 341
    .line 342
    .line 343
    move-result-wide v23

    .line 344
    sget-object v25, Landroidx/compose/ui/text/font/FontWeight;->t:Landroidx/compose/ui/text/font/FontWeight;

    .line 345
    .line 346
    const v31, 0x20203

    .line 347
    .line 348
    .line 349
    const v32, 0xdffff9

    .line 350
    .line 351
    .line 352
    const-wide/16 v21, 0x0

    .line 353
    .line 354
    const-wide/16 v26, 0x0

    .line 355
    .line 356
    const-wide/16 v28, 0x0

    .line 357
    .line 358
    const/16 v30, 0x0

    .line 359
    .line 360
    move-object/from16 v20, v0

    .line 361
    .line 362
    invoke-static/range {v20 .. v32}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 363
    .line 364
    .line 365
    move-result-object v7

    .line 366
    const/4 v14, 0x6

    .line 367
    const/16 v15, 0x1fa

    .line 368
    .line 369
    const-string v5, "Delete all transfers?"

    .line 370
    .line 371
    const/4 v6, 0x0

    .line 372
    const/4 v8, 0x0

    .line 373
    const/4 v9, 0x0

    .line 374
    const/4 v10, 0x0

    .line 375
    const/4 v11, 0x0

    .line 376
    const/4 v12, 0x0

    .line 377
    invoke-static/range {v5 .. v15}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 378
    .line 379
    .line 380
    goto :goto_4

    .line 381
    :cond_8
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 382
    .line 383
    .line 384
    :goto_4
    return-object v19

    .line 385
    :pswitch_9
    move-object/from16 v0, p1

    .line 386
    .line 387
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 388
    .line 389
    move-object/from16 v1, p2

    .line 390
    .line 391
    check-cast v1, Ljava/lang/Integer;

    .line 392
    .line 393
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    and-int/lit8 v2, v1, 0x3

    .line 398
    .line 399
    if-eq v2, v3, :cond_9

    .line 400
    .line 401
    move/from16 v4, v18

    .line 402
    .line 403
    :cond_9
    and-int/lit8 v1, v1, 0x1

    .line 404
    .line 405
    move-object v13, v0

    .line 406
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 407
    .line 408
    invoke-virtual {v13, v1, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    if-eqz v0, :cond_a

    .line 413
    .line 414
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 415
    .line 416
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 421
    .line 422
    iget-object v0, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 423
    .line 424
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 425
    .line 426
    .line 427
    move-result-wide v23

    .line 428
    const/16 v31, 0x0

    .line 429
    .line 430
    const v32, 0xfffffd

    .line 431
    .line 432
    .line 433
    const-wide/16 v21, 0x0

    .line 434
    .line 435
    const/16 v25, 0x0

    .line 436
    .line 437
    const-wide/16 v26, 0x0

    .line 438
    .line 439
    const-wide/16 v28, 0x0

    .line 440
    .line 441
    const/16 v30, 0x0

    .line 442
    .line 443
    move-object/from16 v20, v0

    .line 444
    .line 445
    invoke-static/range {v20 .. v32}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 446
    .line 447
    .line 448
    move-result-object v7

    .line 449
    const/4 v14, 0x6

    .line 450
    const/16 v15, 0x1fa

    .line 451
    .line 452
    const-string v5, "The transfer will be removed from Blip. The files will remain on your device unless you choose to delete them too."

    .line 453
    .line 454
    const/4 v6, 0x0

    .line 455
    const/4 v8, 0x0

    .line 456
    const/4 v9, 0x0

    .line 457
    const/4 v10, 0x0

    .line 458
    const/4 v11, 0x0

    .line 459
    const/4 v12, 0x0

    .line 460
    invoke-static/range {v5 .. v15}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 461
    .line 462
    .line 463
    goto :goto_5

    .line 464
    :cond_a
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 465
    .line 466
    .line 467
    :goto_5
    return-object v19

    .line 468
    :pswitch_a
    move-object/from16 v0, p1

    .line 469
    .line 470
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 471
    .line 472
    move-object/from16 v1, p2

    .line 473
    .line 474
    check-cast v1, Ljava/lang/Integer;

    .line 475
    .line 476
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 477
    .line 478
    .line 479
    move-result v1

    .line 480
    and-int/lit8 v2, v1, 0x3

    .line 481
    .line 482
    if-eq v2, v3, :cond_b

    .line 483
    .line 484
    move/from16 v4, v18

    .line 485
    .line 486
    :cond_b
    and-int/lit8 v1, v1, 0x1

    .line 487
    .line 488
    move-object v9, v0

    .line 489
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 490
    .line 491
    invoke-virtual {v9, v1, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    if-eqz v0, :cond_c

    .line 496
    .line 497
    invoke-static {}, Landroidx/compose/material/icons/automirrored/rounded/ArrowBackKt;->a()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 498
    .line 499
    .line 500
    move-result-object v5

    .line 501
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 502
    .line 503
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 508
    .line 509
    iget-wide v0, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->d:J

    .line 510
    .line 511
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->a(J)Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 512
    .line 513
    .line 514
    move-result-object v8

    .line 515
    const/16 v10, 0x30

    .line 516
    .line 517
    const/16 v11, 0x3c

    .line 518
    .line 519
    const-string v6, "Back"

    .line 520
    .line 521
    const/4 v7, 0x0

    .line 522
    invoke-static/range {v5 .. v11}, Landroidx/compose/foundation/ImageKt;->b(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/BlendModeColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 523
    .line 524
    .line 525
    goto :goto_6

    .line 526
    :cond_c
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 527
    .line 528
    .line 529
    :goto_6
    return-object v19

    .line 530
    :pswitch_b
    move-object/from16 v0, p1

    .line 531
    .line 532
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 533
    .line 534
    move-object/from16 v1, p2

    .line 535
    .line 536
    check-cast v1, Ljava/lang/Integer;

    .line 537
    .line 538
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 539
    .line 540
    .line 541
    move-result v1

    .line 542
    and-int/lit8 v2, v1, 0x3

    .line 543
    .line 544
    if-eq v2, v3, :cond_d

    .line 545
    .line 546
    move/from16 v4, v18

    .line 547
    .line 548
    :cond_d
    and-int/lit8 v1, v1, 0x1

    .line 549
    .line 550
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 551
    .line 552
    invoke-virtual {v0, v1, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 553
    .line 554
    .line 555
    move-result v1

    .line 556
    if-eqz v1, :cond_e

    .line 557
    .line 558
    goto :goto_7

    .line 559
    :cond_e
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 560
    .line 561
    .line 562
    :goto_7
    return-object v19

    .line 563
    :pswitch_c
    move-object/from16 v0, p1

    .line 564
    .line 565
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 566
    .line 567
    move-object/from16 v1, p2

    .line 568
    .line 569
    check-cast v1, Ljava/lang/Integer;

    .line 570
    .line 571
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 572
    .line 573
    .line 574
    move-result v1

    .line 575
    and-int/lit8 v2, v1, 0x3

    .line 576
    .line 577
    if-eq v2, v3, :cond_f

    .line 578
    .line 579
    move/from16 v4, v18

    .line 580
    .line 581
    :cond_f
    and-int/lit8 v1, v1, 0x1

    .line 582
    .line 583
    move-object v10, v0

    .line 584
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 585
    .line 586
    invoke-virtual {v10, v1, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 587
    .line 588
    .line 589
    move-result v0

    .line 590
    if-eqz v0, :cond_10

    .line 591
    .line 592
    sget-object v7, Lnet/blip/shared/Strings;->e:Ljava/lang/String;

    .line 593
    .line 594
    const/16 v11, 0x30

    .line 595
    .line 596
    const/16 v12, 0x9

    .line 597
    .line 598
    const/4 v5, 0x0

    .line 599
    const-string v6, "Email"

    .line 600
    .line 601
    const-wide/16 v8, 0x0

    .line 602
    .line 603
    invoke-static/range {v5 .. v12}, Lnet/blip/android/ui/list/ListRowKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;JLandroidx/compose/runtime/Composer;II)V

    .line 604
    .line 605
    .line 606
    goto :goto_8

    .line 607
    :cond_10
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 608
    .line 609
    .line 610
    :goto_8
    return-object v19

    .line 611
    :pswitch_d
    move-object/from16 v0, p1

    .line 612
    .line 613
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 614
    .line 615
    move-object/from16 v1, p2

    .line 616
    .line 617
    check-cast v1, Ljava/lang/Integer;

    .line 618
    .line 619
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 620
    .line 621
    .line 622
    move-result v1

    .line 623
    and-int/lit8 v2, v1, 0x3

    .line 624
    .line 625
    if-eq v2, v3, :cond_11

    .line 626
    .line 627
    move/from16 v2, v18

    .line 628
    .line 629
    goto :goto_9

    .line 630
    :cond_11
    move v2, v4

    .line 631
    :goto_9
    and-int/lit8 v1, v1, 0x1

    .line 632
    .line 633
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 634
    .line 635
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 636
    .line 637
    .line 638
    move-result v1

    .line 639
    if-eqz v1, :cond_13

    .line 640
    .line 641
    sget-object v1, Landroidx/compose/material/icons/rounded/MailKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 642
    .line 643
    if-eqz v1, :cond_12

    .line 644
    .line 645
    goto/16 :goto_a

    .line 646
    .line 647
    :cond_12
    new-instance v20, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 648
    .line 649
    const/16 v28, 0x0

    .line 650
    .line 651
    const/16 v30, 0x60

    .line 652
    .line 653
    const-string v21, "Rounded.Mail"

    .line 654
    .line 655
    const/high16 v22, 0x41c00000    # 24.0f

    .line 656
    .line 657
    const/high16 v23, 0x41c00000    # 24.0f

    .line 658
    .line 659
    const/high16 v24, 0x41c00000    # 24.0f

    .line 660
    .line 661
    const/high16 v25, 0x41c00000    # 24.0f

    .line 662
    .line 663
    const-wide/16 v26, 0x0

    .line 664
    .line 665
    const/16 v29, 0x0

    .line 666
    .line 667
    invoke-direct/range {v20 .. v30}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 668
    .line 669
    .line 670
    move-object/from16 v1, v20

    .line 671
    .line 672
    sget v2, Landroidx/compose/ui/graphics/vector/VectorKt;->a:I

    .line 673
    .line 674
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    .line 675
    .line 676
    sget-wide v5, Landroidx/compose/ui/graphics/Color;->b:J

    .line 677
    .line 678
    invoke-direct {v2, v5, v6}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 679
    .line 680
    .line 681
    new-instance v5, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 682
    .line 683
    invoke-direct {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v5, v8, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 687
    .line 688
    .line 689
    invoke-virtual {v5, v15, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 690
    .line 691
    .line 692
    const/high16 v25, -0x40000000    # -2.0f

    .line 693
    .line 694
    const/high16 v26, 0x40000000    # 2.0f

    .line 695
    .line 696
    const v21, -0x40733333    # -1.1f

    .line 697
    .line 698
    .line 699
    const/16 v22, 0x0

    .line 700
    .line 701
    const/high16 v23, -0x40000000    # -2.0f

    .line 702
    .line 703
    const v24, 0x3f666666    # 0.9f

    .line 704
    .line 705
    .line 706
    move-object/from16 v20, v5

    .line 707
    .line 708
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v5, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->m(F)V

    .line 712
    .line 713
    .line 714
    const/high16 v25, 0x40000000    # 2.0f

    .line 715
    .line 716
    const/16 v21, 0x0

    .line 717
    .line 718
    const v22, 0x3f8ccccd    # 1.1f

    .line 719
    .line 720
    .line 721
    const v23, 0x3f666666    # 0.9f

    .line 722
    .line 723
    .line 724
    const/high16 v24, 0x40000000    # 2.0f

    .line 725
    .line 726
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 727
    .line 728
    .line 729
    invoke-virtual {v5, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 730
    .line 731
    .line 732
    const/high16 v26, -0x40000000    # -2.0f

    .line 733
    .line 734
    const v21, 0x3f8ccccd    # 1.1f

    .line 735
    .line 736
    .line 737
    const/16 v22, 0x0

    .line 738
    .line 739
    const/high16 v23, 0x40000000    # 2.0f

    .line 740
    .line 741
    const v24, -0x4099999a    # -0.9f

    .line 742
    .line 743
    .line 744
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v5, v12, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 748
    .line 749
    .line 750
    const/high16 v25, -0x40000000    # -2.0f

    .line 751
    .line 752
    const/16 v21, 0x0

    .line 753
    .line 754
    const v22, -0x40733333    # -1.1f

    .line 755
    .line 756
    .line 757
    const v23, -0x4099999a    # -0.9f

    .line 758
    .line 759
    .line 760
    const/high16 v24, -0x40000000    # -2.0f

    .line 761
    .line 762
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 763
    .line 764
    .line 765
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 766
    .line 767
    .line 768
    const v6, 0x419ccccd    # 19.6f

    .line 769
    .line 770
    .line 771
    const/high16 v8, 0x41040000    # 8.25f

    .line 772
    .line 773
    invoke-virtual {v5, v6, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 774
    .line 775
    .line 776
    const v6, -0x3f2eb852    # -6.54f

    .line 777
    .line 778
    .line 779
    const v10, 0x4082e148    # 4.09f

    .line 780
    .line 781
    .line 782
    invoke-virtual {v5, v6, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 783
    .line 784
    .line 785
    const v25, -0x3ff851ec    # -2.12f

    .line 786
    .line 787
    .line 788
    const/16 v26, 0x0

    .line 789
    .line 790
    const v21, -0x40d9999a    # -0.65f

    .line 791
    .line 792
    .line 793
    const v22, 0x3ed1eb85    # 0.41f

    .line 794
    .line 795
    .line 796
    const v23, -0x4043d70a    # -1.47f

    .line 797
    .line 798
    .line 799
    const v24, 0x3ed1eb85    # 0.41f

    .line 800
    .line 801
    .line 802
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 803
    .line 804
    .line 805
    const v6, 0x408ccccd    # 4.4f

    .line 806
    .line 807
    .line 808
    invoke-virtual {v5, v6, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 809
    .line 810
    .line 811
    const v25, -0x41333333    # -0.4f

    .line 812
    .line 813
    .line 814
    const v26, -0x40c7ae14    # -0.72f

    .line 815
    .line 816
    .line 817
    const/high16 v21, -0x41800000    # -0.25f

    .line 818
    .line 819
    const v22, -0x41dc28f6    # -0.16f

    .line 820
    .line 821
    .line 822
    const v23, -0x41333333    # -0.4f

    .line 823
    .line 824
    .line 825
    const v24, -0x4123d70a    # -0.43f

    .line 826
    .line 827
    .line 828
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 829
    .line 830
    .line 831
    const v25, 0x3fa66666    # 1.3f

    .line 832
    .line 833
    .line 834
    const/16 v21, 0x0

    .line 835
    .line 836
    const v22, -0x40d47ae1    # -0.67f

    .line 837
    .line 838
    .line 839
    const v23, 0x3f3ae148    # 0.73f

    .line 840
    .line 841
    .line 842
    const v24, -0x40770a3d    # -1.07f

    .line 843
    .line 844
    .line 845
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 846
    .line 847
    .line 848
    invoke-virtual {v5, v9, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 849
    .line 850
    .line 851
    const v6, 0x40d66666    # 6.7f

    .line 852
    .line 853
    .line 854
    const v7, -0x3f79eb85    # -4.19f

    .line 855
    .line 856
    .line 857
    invoke-virtual {v5, v6, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 858
    .line 859
    .line 860
    const v26, 0x3f3851ec    # 0.72f

    .line 861
    .line 862
    .line 863
    const v21, 0x3f11eb85    # 0.57f

    .line 864
    .line 865
    .line 866
    const v22, -0x414ccccd    # -0.35f

    .line 867
    .line 868
    .line 869
    const v23, 0x3fa66666    # 1.3f

    .line 870
    .line 871
    .line 872
    const v24, 0x3d4ccccd    # 0.05f

    .line 873
    .line 874
    .line 875
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 876
    .line 877
    .line 878
    const v25, -0x41333333    # -0.4f

    .line 879
    .line 880
    .line 881
    const/16 v21, 0x0

    .line 882
    .line 883
    const v22, 0x3e947ae1    # 0.29f

    .line 884
    .line 885
    .line 886
    const v23, -0x41e66666    # -0.15f

    .line 887
    .line 888
    .line 889
    const v24, 0x3f0f5c29    # 0.56f

    .line 890
    .line 891
    .line 892
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 893
    .line 894
    .line 895
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 896
    .line 897
    .line 898
    iget-object v5, v5, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    .line 899
    .line 900
    invoke-static {v1, v5, v2}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;)V

    .line 901
    .line 902
    .line 903
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 904
    .line 905
    .line 906
    move-result-object v1

    .line 907
    sput-object v1, Landroidx/compose/material/icons/rounded/MailKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 908
    .line 909
    :goto_a
    invoke-static {v1, v14, v0, v4, v3}, Lnet/blip/android/ui/settings/SettingsComposablesKt;->c(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 910
    .line 911
    .line 912
    goto :goto_b

    .line 913
    :cond_13
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 914
    .line 915
    .line 916
    :goto_b
    return-object v19

    .line 917
    :pswitch_e
    move-object/from16 v0, p1

    .line 918
    .line 919
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 920
    .line 921
    move-object/from16 v1, p2

    .line 922
    .line 923
    check-cast v1, Ljava/lang/Integer;

    .line 924
    .line 925
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 926
    .line 927
    .line 928
    move-result v1

    .line 929
    and-int/lit8 v2, v1, 0x3

    .line 930
    .line 931
    if-eq v2, v3, :cond_14

    .line 932
    .line 933
    move/from16 v2, v18

    .line 934
    .line 935
    goto :goto_c

    .line 936
    :cond_14
    move v2, v4

    .line 937
    :goto_c
    and-int/lit8 v1, v1, 0x1

    .line 938
    .line 939
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 940
    .line 941
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 942
    .line 943
    .line 944
    move-result v1

    .line 945
    if-eqz v1, :cond_15

    .line 946
    .line 947
    invoke-static {}, Landroidx/compose/material/icons/rounded/FolderKt;->a()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 948
    .line 949
    .line 950
    move-result-object v1

    .line 951
    invoke-static {v1, v14, v0, v4, v3}, Lnet/blip/android/ui/settings/SettingsComposablesKt;->c(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 952
    .line 953
    .line 954
    goto :goto_d

    .line 955
    :cond_15
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 956
    .line 957
    .line 958
    :goto_d
    return-object v19

    .line 959
    :pswitch_f
    move-object/from16 v0, p1

    .line 960
    .line 961
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 962
    .line 963
    move-object/from16 v1, p2

    .line 964
    .line 965
    check-cast v1, Ljava/lang/Integer;

    .line 966
    .line 967
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 968
    .line 969
    .line 970
    move-result v1

    .line 971
    and-int/lit8 v2, v1, 0x3

    .line 972
    .line 973
    if-eq v2, v3, :cond_16

    .line 974
    .line 975
    move/from16 v2, v18

    .line 976
    .line 977
    goto :goto_e

    .line 978
    :cond_16
    move v2, v4

    .line 979
    :goto_e
    and-int/lit8 v1, v1, 0x1

    .line 980
    .line 981
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 982
    .line 983
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 984
    .line 985
    .line 986
    move-result v1

    .line 987
    if-eqz v1, :cond_18

    .line 988
    .line 989
    sget-object v1, Landroidx/compose/material/icons/rounded/VerifiedKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 990
    .line 991
    if-eqz v1, :cond_17

    .line 992
    .line 993
    goto/16 :goto_f

    .line 994
    .line 995
    :cond_17
    new-instance v20, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 996
    .line 997
    const/16 v28, 0x0

    .line 998
    .line 999
    const/16 v30, 0x60

    .line 1000
    .line 1001
    const-string v21, "Rounded.Verified"

    .line 1002
    .line 1003
    const/high16 v22, 0x41c00000    # 24.0f

    .line 1004
    .line 1005
    const/high16 v23, 0x41c00000    # 24.0f

    .line 1006
    .line 1007
    const/high16 v24, 0x41c00000    # 24.0f

    .line 1008
    .line 1009
    const/high16 v25, 0x41c00000    # 24.0f

    .line 1010
    .line 1011
    const-wide/16 v26, 0x0

    .line 1012
    .line 1013
    const/16 v29, 0x0

    .line 1014
    .line 1015
    invoke-direct/range {v20 .. v30}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 1016
    .line 1017
    .line 1018
    move-object/from16 v1, v20

    .line 1019
    .line 1020
    sget v2, Landroidx/compose/ui/graphics/vector/VectorKt;->a:I

    .line 1021
    .line 1022
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    .line 1023
    .line 1024
    sget-wide v7, Landroidx/compose/ui/graphics/Color;->b:J

    .line 1025
    .line 1026
    invoke-direct {v2, v7, v8}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 1027
    .line 1028
    .line 1029
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 1030
    .line 1031
    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 1032
    .line 1033
    .line 1034
    const/high16 v8, 0x41b80000    # 23.0f

    .line 1035
    .line 1036
    invoke-virtual {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 1037
    .line 1038
    .line 1039
    const v11, -0x3fe3d70a    # -2.44f

    .line 1040
    .line 1041
    .line 1042
    const v12, -0x3fcd70a4    # -2.79f

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {v7, v11, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 1046
    .line 1047
    .line 1048
    const v11, 0x3eae147b    # 0.34f

    .line 1049
    .line 1050
    .line 1051
    const v12, -0x3f93d70a    # -3.69f

    .line 1052
    .line 1053
    .line 1054
    invoke-virtual {v7, v11, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 1055
    .line 1056
    .line 1057
    const v11, -0x3f98f5c3    # -3.61f

    .line 1058
    .line 1059
    .line 1060
    const v13, -0x40ae147b    # -0.82f

    .line 1061
    .line 1062
    .line 1063
    invoke-virtual {v7, v11, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 1064
    .line 1065
    .line 1066
    const v11, 0x41766666    # 15.4f

    .line 1067
    .line 1068
    .line 1069
    invoke-virtual {v7, v11, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1070
    .line 1071
    .line 1072
    const v11, 0x403d70a4    # 2.96f

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v7, v9, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1076
    .line 1077
    .line 1078
    const v11, 0x4109999a    # 8.6f

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {v7, v11, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1082
    .line 1083
    .line 1084
    const v6, 0x40d6b852    # 6.71f

    .line 1085
    .line 1086
    .line 1087
    const v15, 0x4096147b    # 4.69f

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v7, v6, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1091
    .line 1092
    .line 1093
    const v6, 0x40466666    # 3.1f

    .line 1094
    .line 1095
    .line 1096
    const/high16 v15, 0x40b00000    # 5.5f

    .line 1097
    .line 1098
    invoke-virtual {v7, v6, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1099
    .line 1100
    .line 1101
    const v6, 0x405c28f6    # 3.44f

    .line 1102
    .line 1103
    .line 1104
    const v15, 0x41133333    # 9.2f

    .line 1105
    .line 1106
    .line 1107
    invoke-virtual {v7, v6, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {v7, v10, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1111
    .line 1112
    .line 1113
    const v6, 0x401c28f6    # 2.44f

    .line 1114
    .line 1115
    .line 1116
    const v10, 0x40328f5c    # 2.79f

    .line 1117
    .line 1118
    .line 1119
    invoke-virtual {v7, v6, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 1120
    .line 1121
    .line 1122
    const v6, 0x406ccccd    # 3.7f

    .line 1123
    .line 1124
    .line 1125
    const v10, -0x4151eb85    # -0.34f

    .line 1126
    .line 1127
    .line 1128
    invoke-virtual {v7, v10, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 1129
    .line 1130
    .line 1131
    const v6, 0x3f51eb85    # 0.82f

    .line 1132
    .line 1133
    .line 1134
    const v15, 0x40670a3d    # 3.61f

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {v7, v15, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 1138
    .line 1139
    .line 1140
    const/high16 v6, 0x41b40000    # 22.5f

    .line 1141
    .line 1142
    invoke-virtual {v7, v11, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1143
    .line 1144
    .line 1145
    const v6, -0x4043d70a    # -1.47f

    .line 1146
    .line 1147
    .line 1148
    const v11, 0x4059999a    # 3.4f

    .line 1149
    .line 1150
    .line 1151
    invoke-virtual {v7, v11, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 1152
    .line 1153
    .line 1154
    const v6, 0x3fbae148    # 1.46f

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual {v7, v11, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 1158
    .line 1159
    .line 1160
    const v6, 0x3ff1eb85    # 1.89f

    .line 1161
    .line 1162
    .line 1163
    const v11, -0x3fb3d70a    # -3.19f

    .line 1164
    .line 1165
    .line 1166
    invoke-virtual {v7, v6, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 1167
    .line 1168
    .line 1169
    invoke-virtual {v7, v15, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 1170
    .line 1171
    .line 1172
    invoke-virtual {v7, v10, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 1173
    .line 1174
    .line 1175
    invoke-virtual {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1176
    .line 1177
    .line 1178
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 1179
    .line 1180
    .line 1181
    const v6, 0x4116147b    # 9.38f

    .line 1182
    .line 1183
    .line 1184
    const v8, 0x4180147b    # 16.01f

    .line 1185
    .line 1186
    .line 1187
    invoke-virtual {v7, v6, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 1188
    .line 1189
    .line 1190
    const v6, 0x4159c28f    # 13.61f

    .line 1191
    .line 1192
    .line 1193
    invoke-virtual {v7, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1194
    .line 1195
    .line 1196
    const/16 v25, 0x0

    .line 1197
    .line 1198
    const v26, -0x404b851f    # -1.41f

    .line 1199
    .line 1200
    .line 1201
    const v21, -0x413851ec    # -0.39f

    .line 1202
    .line 1203
    .line 1204
    const v22, -0x413851ec    # -0.39f

    .line 1205
    .line 1206
    .line 1207
    const v23, -0x413851ec    # -0.39f

    .line 1208
    .line 1209
    .line 1210
    const v24, -0x407d70a4    # -1.02f

    .line 1211
    .line 1212
    .line 1213
    move-object/from16 v20, v7

    .line 1214
    .line 1215
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1216
    .line 1217
    .line 1218
    move-object/from16 v5, v20

    .line 1219
    .line 1220
    const v6, -0x4270a3d7    # -0.07f

    .line 1221
    .line 1222
    .line 1223
    const v7, 0x3d8f5c29    # 0.07f

    .line 1224
    .line 1225
    .line 1226
    invoke-virtual {v5, v7, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 1227
    .line 1228
    .line 1229
    const v25, 0x3fb5c28f    # 1.42f

    .line 1230
    .line 1231
    .line 1232
    const/16 v26, 0x0

    .line 1233
    .line 1234
    const v21, 0x3ec7ae14    # 0.39f

    .line 1235
    .line 1236
    .line 1237
    const v23, 0x3f83d70a    # 1.03f

    .line 1238
    .line 1239
    .line 1240
    const v24, -0x413851ec    # -0.39f

    .line 1241
    .line 1242
    .line 1243
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1244
    .line 1245
    .line 1246
    const v6, 0x3fce147b    # 1.61f

    .line 1247
    .line 1248
    .line 1249
    const v8, 0x3fcf5c29    # 1.62f

    .line 1250
    .line 1251
    .line 1252
    invoke-virtual {v5, v6, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 1253
    .line 1254
    .line 1255
    const v6, 0x40a4cccd    # 5.15f

    .line 1256
    .line 1257
    .line 1258
    const v8, -0x3f5ae148    # -5.16f

    .line 1259
    .line 1260
    .line 1261
    invoke-virtual {v5, v6, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 1262
    .line 1263
    .line 1264
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1265
    .line 1266
    .line 1267
    invoke-virtual {v5, v7, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 1268
    .line 1269
    .line 1270
    const/16 v25, 0x0

    .line 1271
    .line 1272
    const v26, 0x3fb47ae1    # 1.41f

    .line 1273
    .line 1274
    .line 1275
    const v22, 0x3ec7ae14    # 0.39f

    .line 1276
    .line 1277
    .line 1278
    const v23, 0x3ec7ae14    # 0.39f

    .line 1279
    .line 1280
    .line 1281
    const v24, 0x3f828f5c    # 1.02f

    .line 1282
    .line 1283
    .line 1284
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1285
    .line 1286
    .line 1287
    const v6, -0x3f428f5c    # -5.92f

    .line 1288
    .line 1289
    .line 1290
    const v7, 0x40be147b    # 5.94f

    .line 1291
    .line 1292
    .line 1293
    invoke-virtual {v5, v6, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 1294
    .line 1295
    .line 1296
    const v25, 0x4116147b    # 9.38f

    .line 1297
    .line 1298
    .line 1299
    const v26, 0x4180147b    # 16.01f

    .line 1300
    .line 1301
    .line 1302
    const v21, 0x41268f5c    # 10.41f

    .line 1303
    .line 1304
    .line 1305
    const v22, 0x41833333    # 16.4f

    .line 1306
    .line 1307
    .line 1308
    const v23, 0x411c7ae1    # 9.78f

    .line 1309
    .line 1310
    .line 1311
    const v24, 0x41833333    # 16.4f

    .line 1312
    .line 1313
    .line 1314
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(FFFFFF)V

    .line 1315
    .line 1316
    .line 1317
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 1318
    .line 1319
    .line 1320
    iget-object v5, v5, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    .line 1321
    .line 1322
    invoke-static {v1, v5, v2}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;)V

    .line 1323
    .line 1324
    .line 1325
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v1

    .line 1329
    sput-object v1, Landroidx/compose/material/icons/rounded/VerifiedKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1330
    .line 1331
    :goto_f
    invoke-static {v1, v14, v0, v4, v3}, Lnet/blip/android/ui/settings/SettingsComposablesKt;->c(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 1332
    .line 1333
    .line 1334
    goto :goto_10

    .line 1335
    :cond_18
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1336
    .line 1337
    .line 1338
    :goto_10
    return-object v19

    .line 1339
    :pswitch_10
    move-object/from16 v0, p1

    .line 1340
    .line 1341
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 1342
    .line 1343
    move-object/from16 v1, p2

    .line 1344
    .line 1345
    check-cast v1, Ljava/lang/Integer;

    .line 1346
    .line 1347
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1348
    .line 1349
    .line 1350
    move-result v1

    .line 1351
    and-int/lit8 v5, v1, 0x3

    .line 1352
    .line 1353
    if-eq v5, v3, :cond_19

    .line 1354
    .line 1355
    move/from16 v5, v18

    .line 1356
    .line 1357
    goto :goto_11

    .line 1358
    :cond_19
    move v5, v4

    .line 1359
    :goto_11
    and-int/lit8 v1, v1, 0x1

    .line 1360
    .line 1361
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1362
    .line 1363
    invoke-virtual {v0, v1, v5}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1364
    .line 1365
    .line 1366
    move-result v1

    .line 1367
    if-eqz v1, :cond_1b

    .line 1368
    .line 1369
    sget-object v1, Landroidx/compose/material/icons/rounded/NotificationsKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1370
    .line 1371
    if-eqz v1, :cond_1a

    .line 1372
    .line 1373
    goto/16 :goto_12

    .line 1374
    .line 1375
    :cond_1a
    new-instance v20, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 1376
    .line 1377
    const/16 v28, 0x0

    .line 1378
    .line 1379
    const/16 v30, 0x60

    .line 1380
    .line 1381
    const-string v21, "Rounded.Notifications"

    .line 1382
    .line 1383
    const/high16 v22, 0x41c00000    # 24.0f

    .line 1384
    .line 1385
    const/high16 v23, 0x41c00000    # 24.0f

    .line 1386
    .line 1387
    const/high16 v24, 0x41c00000    # 24.0f

    .line 1388
    .line 1389
    const/high16 v25, 0x41c00000    # 24.0f

    .line 1390
    .line 1391
    const-wide/16 v26, 0x0

    .line 1392
    .line 1393
    const/16 v29, 0x0

    .line 1394
    .line 1395
    invoke-direct/range {v20 .. v30}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 1396
    .line 1397
    .line 1398
    move-object/from16 v1, v20

    .line 1399
    .line 1400
    sget v5, Landroidx/compose/ui/graphics/vector/VectorKt;->a:I

    .line 1401
    .line 1402
    new-instance v5, Landroidx/compose/ui/graphics/SolidColor;

    .line 1403
    .line 1404
    sget-wide v7, Landroidx/compose/ui/graphics/Color;->b:J

    .line 1405
    .line 1406
    invoke-direct {v5, v7, v8}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 1407
    .line 1408
    .line 1409
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 1410
    .line 1411
    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 1412
    .line 1413
    .line 1414
    invoke-virtual {v7, v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 1415
    .line 1416
    .line 1417
    const/high16 v25, 0x40000000    # 2.0f

    .line 1418
    .line 1419
    const/high16 v26, -0x40000000    # -2.0f

    .line 1420
    .line 1421
    const v21, 0x3f8ccccd    # 1.1f

    .line 1422
    .line 1423
    .line 1424
    const/16 v22, 0x0

    .line 1425
    .line 1426
    const/high16 v23, 0x40000000    # 2.0f

    .line 1427
    .line 1428
    const v24, -0x4099999a    # -0.9f

    .line 1429
    .line 1430
    .line 1431
    move-object/from16 v20, v7

    .line 1432
    .line 1433
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1434
    .line 1435
    .line 1436
    invoke-virtual {v7, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 1437
    .line 1438
    .line 1439
    const/high16 v26, 0x40000000    # 2.0f

    .line 1440
    .line 1441
    const/16 v21, 0x0

    .line 1442
    .line 1443
    const v22, 0x3f8ccccd    # 1.1f

    .line 1444
    .line 1445
    .line 1446
    const v23, 0x3f63d70a    # 0.89f

    .line 1447
    .line 1448
    .line 1449
    const/high16 v24, 0x40000000    # 2.0f

    .line 1450
    .line 1451
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1452
    .line 1453
    .line 1454
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 1455
    .line 1456
    .line 1457
    const/high16 v2, 0x41900000    # 18.0f

    .line 1458
    .line 1459
    invoke-virtual {v7, v2, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 1460
    .line 1461
    .line 1462
    const/high16 v2, -0x3f600000    # -5.0f

    .line 1463
    .line 1464
    invoke-virtual {v7, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->m(F)V

    .line 1465
    .line 1466
    .line 1467
    const/high16 v25, -0x3f700000    # -4.5f

    .line 1468
    .line 1469
    const v26, -0x3f35c28f    # -6.32f

    .line 1470
    .line 1471
    .line 1472
    const v22, -0x3fbb851f    # -3.07f

    .line 1473
    .line 1474
    .line 1475
    const v23, -0x402e147b    # -1.64f

    .line 1476
    .line 1477
    .line 1478
    const v24, -0x3f4b851f    # -5.64f

    .line 1479
    .line 1480
    .line 1481
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1482
    .line 1483
    .line 1484
    const/high16 v2, 0x41580000    # 13.5f

    .line 1485
    .line 1486
    invoke-virtual {v7, v2, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1487
    .line 1488
    .line 1489
    const/high16 v25, -0x40400000    # -1.5f

    .line 1490
    .line 1491
    const/high16 v26, -0x40400000    # -1.5f

    .line 1492
    .line 1493
    const v22, -0x40ab851f    # -0.83f

    .line 1494
    .line 1495
    .line 1496
    const v23, -0x40d47ae1    # -0.67f

    .line 1497
    .line 1498
    .line 1499
    const/high16 v24, -0x40400000    # -1.5f

    .line 1500
    .line 1501
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1502
    .line 1503
    .line 1504
    const v2, 0x3f2b851f    # 0.67f

    .line 1505
    .line 1506
    .line 1507
    const/high16 v8, -0x40400000    # -1.5f

    .line 1508
    .line 1509
    invoke-virtual {v7, v8, v2, v8, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 1510
    .line 1511
    .line 1512
    const v2, 0x3f2e147b    # 0.68f

    .line 1513
    .line 1514
    .line 1515
    invoke-virtual {v7, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->m(F)V

    .line 1516
    .line 1517
    .line 1518
    const/high16 v25, 0x40c00000    # 6.0f

    .line 1519
    .line 1520
    const/high16 v26, 0x41300000    # 11.0f

    .line 1521
    .line 1522
    const v21, 0x40f428f6    # 7.63f

    .line 1523
    .line 1524
    .line 1525
    const v22, 0x40ab851f    # 5.36f

    .line 1526
    .line 1527
    .line 1528
    const/high16 v23, 0x40c00000    # 6.0f

    .line 1529
    .line 1530
    const v24, 0x40fd70a4    # 7.92f

    .line 1531
    .line 1532
    .line 1533
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(FFFFFF)V

    .line 1534
    .line 1535
    .line 1536
    const/high16 v2, 0x40a00000    # 5.0f

    .line 1537
    .line 1538
    invoke-virtual {v7, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->m(F)V

    .line 1539
    .line 1540
    .line 1541
    const v2, -0x405ae148    # -1.29f

    .line 1542
    .line 1543
    .line 1544
    const v6, 0x3fa51eb8    # 1.29f

    .line 1545
    .line 1546
    .line 1547
    invoke-virtual {v7, v2, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 1548
    .line 1549
    .line 1550
    const v25, 0x3f333333    # 0.7f

    .line 1551
    .line 1552
    .line 1553
    const v26, 0x3fdae148    # 1.71f

    .line 1554
    .line 1555
    .line 1556
    const v21, -0x40deb852    # -0.63f

    .line 1557
    .line 1558
    .line 1559
    const v22, 0x3f2147ae    # 0.63f

    .line 1560
    .line 1561
    .line 1562
    const v23, -0x41bd70a4    # -0.19f

    .line 1563
    .line 1564
    .line 1565
    const v24, 0x3fdae148    # 1.71f

    .line 1566
    .line 1567
    .line 1568
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1569
    .line 1570
    .line 1571
    const v2, 0x4152b852    # 13.17f

    .line 1572
    .line 1573
    .line 1574
    invoke-virtual {v7, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 1575
    .line 1576
    .line 1577
    const v25, 0x3f35c28f    # 0.71f

    .line 1578
    .line 1579
    .line 1580
    const v26, -0x40251eb8    # -1.71f

    .line 1581
    .line 1582
    .line 1583
    const v21, 0x3f63d70a    # 0.89f

    .line 1584
    .line 1585
    .line 1586
    const/16 v22, 0x0

    .line 1587
    .line 1588
    const v23, 0x3fab851f    # 1.34f

    .line 1589
    .line 1590
    .line 1591
    const v24, -0x4075c28f    # -1.08f

    .line 1592
    .line 1593
    .line 1594
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1595
    .line 1596
    .line 1597
    const/high16 v2, 0x41900000    # 18.0f

    .line 1598
    .line 1599
    invoke-virtual {v7, v2, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1600
    .line 1601
    .line 1602
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 1603
    .line 1604
    .line 1605
    iget-object v2, v7, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    .line 1606
    .line 1607
    invoke-static {v1, v2, v5}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;)V

    .line 1608
    .line 1609
    .line 1610
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1611
    .line 1612
    .line 1613
    move-result-object v1

    .line 1614
    sput-object v1, Landroidx/compose/material/icons/rounded/NotificationsKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1615
    .line 1616
    :goto_12
    invoke-static {v1, v14, v0, v4, v3}, Lnet/blip/android/ui/settings/SettingsComposablesKt;->c(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 1617
    .line 1618
    .line 1619
    goto :goto_13

    .line 1620
    :cond_1b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1621
    .line 1622
    .line 1623
    :goto_13
    return-object v19

    .line 1624
    :pswitch_11
    move-object/from16 v0, p1

    .line 1625
    .line 1626
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 1627
    .line 1628
    move-object/from16 v1, p2

    .line 1629
    .line 1630
    check-cast v1, Ljava/lang/Integer;

    .line 1631
    .line 1632
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1633
    .line 1634
    .line 1635
    move-result v1

    .line 1636
    and-int/lit8 v2, v1, 0x3

    .line 1637
    .line 1638
    if-eq v2, v3, :cond_1c

    .line 1639
    .line 1640
    move/from16 v4, v18

    .line 1641
    .line 1642
    :cond_1c
    and-int/lit8 v1, v1, 0x1

    .line 1643
    .line 1644
    move-object v13, v0

    .line 1645
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 1646
    .line 1647
    invoke-virtual {v13, v1, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1648
    .line 1649
    .line 1650
    move-result v0

    .line 1651
    if-eqz v0, :cond_1d

    .line 1652
    .line 1653
    sget-object v0, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->c:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1654
    .line 1655
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1656
    .line 1657
    .line 1658
    move-result-object v0

    .line 1659
    check-cast v0, Lnet/blip/libblip/HardwareInfo;

    .line 1660
    .line 1661
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1662
    .line 1663
    .line 1664
    check-cast v0, Lnet/blip/android/HardwareInfoAndroid;

    .line 1665
    .line 1666
    iget-object v0, v0, Lnet/blip/android/HardwareInfoAndroid;->g:Lnet/blip/libblip/DeviceKind;

    .line 1667
    .line 1668
    invoke-static {v0}, Lnet/blip/libblip/Device_DerivedKt;->b(Lnet/blip/libblip/DeviceKind;)Ljava/lang/String;

    .line 1669
    .line 1670
    .line 1671
    move-result-object v0

    .line 1672
    const-string v1, "You won\'t be able to send items to this "

    .line 1673
    .line 1674
    const-string v2, " anymore"

    .line 1675
    .line 1676
    invoke-static {v1, v0, v2}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v5

    .line 1680
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1681
    .line 1682
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1683
    .line 1684
    .line 1685
    move-result-object v0

    .line 1686
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 1687
    .line 1688
    iget-object v0, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 1689
    .line 1690
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 1691
    .line 1692
    .line 1693
    move-result-wide v23

    .line 1694
    const/16 v31, 0x0

    .line 1695
    .line 1696
    const v32, 0xfffffd

    .line 1697
    .line 1698
    .line 1699
    const-wide/16 v21, 0x0

    .line 1700
    .line 1701
    const/16 v25, 0x0

    .line 1702
    .line 1703
    const-wide/16 v26, 0x0

    .line 1704
    .line 1705
    const-wide/16 v28, 0x0

    .line 1706
    .line 1707
    const/16 v30, 0x0

    .line 1708
    .line 1709
    move-object/from16 v20, v0

    .line 1710
    .line 1711
    invoke-static/range {v20 .. v32}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 1712
    .line 1713
    .line 1714
    move-result-object v7

    .line 1715
    const/4 v14, 0x0

    .line 1716
    const/16 v15, 0x1fa

    .line 1717
    .line 1718
    const/4 v6, 0x0

    .line 1719
    const/4 v8, 0x0

    .line 1720
    const/4 v9, 0x0

    .line 1721
    const/4 v10, 0x0

    .line 1722
    const/4 v11, 0x0

    .line 1723
    const/4 v12, 0x0

    .line 1724
    invoke-static/range {v5 .. v15}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 1725
    .line 1726
    .line 1727
    goto :goto_14

    .line 1728
    :cond_1d
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1729
    .line 1730
    .line 1731
    :goto_14
    return-object v19

    .line 1732
    :pswitch_12
    move-object/from16 v0, p1

    .line 1733
    .line 1734
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 1735
    .line 1736
    move-object/from16 v1, p2

    .line 1737
    .line 1738
    check-cast v1, Ljava/lang/Integer;

    .line 1739
    .line 1740
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1741
    .line 1742
    .line 1743
    move-result v1

    .line 1744
    and-int/lit8 v2, v1, 0x3

    .line 1745
    .line 1746
    if-eq v2, v3, :cond_1e

    .line 1747
    .line 1748
    move/from16 v4, v18

    .line 1749
    .line 1750
    :cond_1e
    and-int/lit8 v1, v1, 0x1

    .line 1751
    .line 1752
    move-object v13, v0

    .line 1753
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 1754
    .line 1755
    invoke-virtual {v13, v1, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1756
    .line 1757
    .line 1758
    move-result v0

    .line 1759
    if-eqz v0, :cond_1f

    .line 1760
    .line 1761
    sget-object v0, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->c:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1762
    .line 1763
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1764
    .line 1765
    .line 1766
    move-result-object v0

    .line 1767
    check-cast v0, Lnet/blip/libblip/HardwareInfo;

    .line 1768
    .line 1769
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1770
    .line 1771
    .line 1772
    check-cast v0, Lnet/blip/android/HardwareInfoAndroid;

    .line 1773
    .line 1774
    iget-object v0, v0, Lnet/blip/android/HardwareInfoAndroid;->g:Lnet/blip/libblip/DeviceKind;

    .line 1775
    .line 1776
    invoke-static {v0}, Lnet/blip/libblip/Device_DerivedKt;->b(Lnet/blip/libblip/DeviceKind;)Ljava/lang/String;

    .line 1777
    .line 1778
    .line 1779
    move-result-object v0

    .line 1780
    const-string v1, "Sign out on this "

    .line 1781
    .line 1782
    const-string v2, "?"

    .line 1783
    .line 1784
    invoke-static {v1, v0, v2}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1785
    .line 1786
    .line 1787
    move-result-object v5

    .line 1788
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1789
    .line 1790
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1791
    .line 1792
    .line 1793
    move-result-object v0

    .line 1794
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 1795
    .line 1796
    iget-object v0, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 1797
    .line 1798
    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 1799
    .line 1800
    .line 1801
    move-result-wide v23

    .line 1802
    sget-object v25, Landroidx/compose/ui/text/font/FontWeight;->t:Landroidx/compose/ui/text/font/FontWeight;

    .line 1803
    .line 1804
    const v31, 0x20203

    .line 1805
    .line 1806
    .line 1807
    const v32, 0xdffff9

    .line 1808
    .line 1809
    .line 1810
    const-wide/16 v21, 0x0

    .line 1811
    .line 1812
    const-wide/16 v26, 0x0

    .line 1813
    .line 1814
    const-wide/16 v28, 0x0

    .line 1815
    .line 1816
    const/16 v30, 0x0

    .line 1817
    .line 1818
    move-object/from16 v20, v0

    .line 1819
    .line 1820
    invoke-static/range {v20 .. v32}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 1821
    .line 1822
    .line 1823
    move-result-object v7

    .line 1824
    const/4 v14, 0x0

    .line 1825
    const/16 v15, 0x1fa

    .line 1826
    .line 1827
    const/4 v6, 0x0

    .line 1828
    const/4 v8, 0x0

    .line 1829
    const/4 v9, 0x0

    .line 1830
    const/4 v10, 0x0

    .line 1831
    const/4 v11, 0x0

    .line 1832
    const/4 v12, 0x0

    .line 1833
    invoke-static/range {v5 .. v15}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 1834
    .line 1835
    .line 1836
    goto :goto_15

    .line 1837
    :cond_1f
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1838
    .line 1839
    .line 1840
    :goto_15
    return-object v19

    .line 1841
    :pswitch_13
    move-object/from16 v0, p1

    .line 1842
    .line 1843
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 1844
    .line 1845
    move-object/from16 v1, p2

    .line 1846
    .line 1847
    check-cast v1, Ljava/lang/Integer;

    .line 1848
    .line 1849
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1850
    .line 1851
    .line 1852
    move-result v1

    .line 1853
    and-int/lit8 v2, v1, 0x3

    .line 1854
    .line 1855
    if-eq v2, v3, :cond_20

    .line 1856
    .line 1857
    move/from16 v4, v18

    .line 1858
    .line 1859
    :cond_20
    and-int/lit8 v1, v1, 0x1

    .line 1860
    .line 1861
    move-object v10, v0

    .line 1862
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 1863
    .line 1864
    invoke-virtual {v10, v1, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1865
    .line 1866
    .line 1867
    move-result v0

    .line 1868
    if-eqz v0, :cond_21

    .line 1869
    .line 1870
    sget-object v0, Lnet/blip/shared/Strings;->c:Ljava/lang/String;

    .line 1871
    .line 1872
    const-string v1, "@"

    .line 1873
    .line 1874
    invoke-static {v1, v0}, Ljb;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1875
    .line 1876
    .line 1877
    move-result-object v7

    .line 1878
    const/16 v11, 0x30

    .line 1879
    .line 1880
    const/16 v12, 0x9

    .line 1881
    .line 1882
    const/4 v5, 0x0

    .line 1883
    const-string v6, "Twitter"

    .line 1884
    .line 1885
    const-wide/16 v8, 0x0

    .line 1886
    .line 1887
    invoke-static/range {v5 .. v12}, Lnet/blip/android/ui/list/ListRowKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;JLandroidx/compose/runtime/Composer;II)V

    .line 1888
    .line 1889
    .line 1890
    goto :goto_16

    .line 1891
    :cond_21
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1892
    .line 1893
    .line 1894
    :goto_16
    return-object v19

    .line 1895
    :pswitch_14
    move-object/from16 v0, p1

    .line 1896
    .line 1897
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 1898
    .line 1899
    move-object/from16 v1, p2

    .line 1900
    .line 1901
    check-cast v1, Ljava/lang/Integer;

    .line 1902
    .line 1903
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1904
    .line 1905
    .line 1906
    move-result v1

    .line 1907
    and-int/lit8 v2, v1, 0x3

    .line 1908
    .line 1909
    if-eq v2, v3, :cond_22

    .line 1910
    .line 1911
    move/from16 v2, v18

    .line 1912
    .line 1913
    goto :goto_17

    .line 1914
    :cond_22
    move v2, v4

    .line 1915
    :goto_17
    and-int/lit8 v1, v1, 0x1

    .line 1916
    .line 1917
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1918
    .line 1919
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1920
    .line 1921
    .line 1922
    move-result v1

    .line 1923
    if-eqz v1, :cond_24

    .line 1924
    .line 1925
    sget-object v1, Landroidx/compose/material/icons/rounded/AlternateEmailKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1926
    .line 1927
    if-eqz v1, :cond_23

    .line 1928
    .line 1929
    goto/16 :goto_18

    .line 1930
    .line 1931
    :cond_23
    new-instance v20, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 1932
    .line 1933
    const/16 v28, 0x0

    .line 1934
    .line 1935
    const/16 v30, 0x60

    .line 1936
    .line 1937
    const/16 v29, 0x0

    .line 1938
    .line 1939
    const/high16 v22, 0x41c00000    # 24.0f

    .line 1940
    .line 1941
    const/high16 v23, 0x41c00000    # 24.0f

    .line 1942
    .line 1943
    const/high16 v24, 0x41c00000    # 24.0f

    .line 1944
    .line 1945
    const/high16 v25, 0x41c00000    # 24.0f

    .line 1946
    .line 1947
    const-wide/16 v26, 0x0

    .line 1948
    .line 1949
    const-string v21, "Rounded.AlternateEmail"

    .line 1950
    .line 1951
    invoke-direct/range {v20 .. v30}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 1952
    .line 1953
    .line 1954
    move-object/from16 v1, v20

    .line 1955
    .line 1956
    sget v2, Landroidx/compose/ui/graphics/vector/VectorKt;->a:I

    .line 1957
    .line 1958
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    .line 1959
    .line 1960
    sget-wide v5, Landroidx/compose/ui/graphics/Color;->b:J

    .line 1961
    .line 1962
    invoke-direct {v2, v5, v6}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 1963
    .line 1964
    .line 1965
    new-instance v5, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 1966
    .line 1967
    invoke-direct {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 1968
    .line 1969
    .line 1970
    const v6, 0x414b851f    # 12.72f

    .line 1971
    .line 1972
    .line 1973
    const v7, 0x4001eb85    # 2.03f

    .line 1974
    .line 1975
    .line 1976
    invoke-virtual {v5, v6, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 1977
    .line 1978
    .line 1979
    const v25, 0x4001eb85    # 2.03f

    .line 1980
    .line 1981
    .line 1982
    const v26, 0x414b851f    # 12.72f

    .line 1983
    .line 1984
    .line 1985
    const v21, 0x40d428f6    # 6.63f

    .line 1986
    .line 1987
    .line 1988
    const v22, 0x3fcccccd    # 1.6f

    .line 1989
    .line 1990
    .line 1991
    const v23, 0x3fcccccd    # 1.6f

    .line 1992
    .line 1993
    .line 1994
    const v24, 0x40d428f6    # 6.63f

    .line 1995
    .line 1996
    .line 1997
    move-object/from16 v20, v5

    .line 1998
    .line 1999
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(FFFFFF)V

    .line 2000
    .line 2001
    .line 2002
    const v25, 0x4144f5c3    # 12.31f

    .line 2003
    .line 2004
    .line 2005
    const/high16 v26, 0x41b00000    # 22.0f

    .line 2006
    .line 2007
    const v21, 0x4018f5c3    # 2.39f

    .line 2008
    .line 2009
    .line 2010
    const v22, 0x4190147b    # 18.01f

    .line 2011
    .line 2012
    .line 2013
    const v23, 0x40e051ec    # 7.01f

    .line 2014
    .line 2015
    .line 2016
    const/high16 v24, 0x41b00000    # 22.0f

    .line 2017
    .line 2018
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(FFFFFF)V

    .line 2019
    .line 2020
    .line 2021
    invoke-virtual {v5, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->e(F)V

    .line 2022
    .line 2023
    .line 2024
    const/high16 v25, 0x3f800000    # 1.0f

    .line 2025
    .line 2026
    const/high16 v26, -0x40800000    # -1.0f

    .line 2027
    .line 2028
    const v21, 0x3f0ccccd    # 0.55f

    .line 2029
    .line 2030
    .line 2031
    const/16 v22, 0x0

    .line 2032
    .line 2033
    const/high16 v23, 0x3f800000    # 1.0f

    .line 2034
    .line 2035
    const v24, -0x4119999a    # -0.45f

    .line 2036
    .line 2037
    .line 2038
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 2039
    .line 2040
    .line 2041
    const v6, -0x4119999a    # -0.45f

    .line 2042
    .line 2043
    .line 2044
    const/high16 v7, -0x40800000    # -1.0f

    .line 2045
    .line 2046
    invoke-virtual {v5, v6, v7, v7, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 2047
    .line 2048
    .line 2049
    const v6, -0x3f951eb8    # -3.67f

    .line 2050
    .line 2051
    .line 2052
    invoke-virtual {v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 2053
    .line 2054
    .line 2055
    const v25, -0x3efeb852    # -8.08f

    .line 2056
    .line 2057
    .line 2058
    const v26, -0x3f3f0a3d    # -6.03f

    .line 2059
    .line 2060
    .line 2061
    const v21, -0x3f9147ae    # -3.73f

    .line 2062
    .line 2063
    .line 2064
    const v23, -0x3f1b3333    # -7.15f

    .line 2065
    .line 2066
    .line 2067
    const v24, -0x3fe51eb8    # -2.42f

    .line 2068
    .line 2069
    .line 2070
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 2071
    .line 2072
    .line 2073
    const v25, 0x411b5c29    # 9.71f

    .line 2074
    .line 2075
    .line 2076
    const v26, -0x3ee4a3d7    # -9.71f

    .line 2077
    .line 2078
    .line 2079
    const v21, -0x404147ae    # -1.49f

    .line 2080
    .line 2081
    .line 2082
    const v22, -0x3f466666    # -5.8f

    .line 2083
    .line 2084
    .line 2085
    const v23, 0x407a3d71    # 3.91f

    .line 2086
    .line 2087
    .line 2088
    const v24, -0x3ecca3d7    # -11.21f

    .line 2089
    .line 2090
    .line 2091
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 2092
    .line 2093
    .line 2094
    const/high16 v25, 0x41a00000    # 20.0f

    .line 2095
    .line 2096
    const v26, 0x414547ae    # 12.33f

    .line 2097
    .line 2098
    .line 2099
    const v21, 0x418ca3d7    # 17.58f

    .line 2100
    .line 2101
    .line 2102
    const v22, 0x40a5c28f    # 5.18f

    .line 2103
    .line 2104
    .line 2105
    const/high16 v23, 0x41a00000    # 20.0f

    .line 2106
    .line 2107
    const v24, 0x4109999a    # 8.6f

    .line 2108
    .line 2109
    .line 2110
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(FFFFFF)V

    .line 2111
    .line 2112
    .line 2113
    const v6, 0x3f8ccccd    # 1.1f

    .line 2114
    .line 2115
    .line 2116
    invoke-virtual {v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->m(F)V

    .line 2117
    .line 2118
    .line 2119
    const/high16 v25, -0x40400000    # -1.5f

    .line 2120
    .line 2121
    const v26, 0x3fc8f5c3    # 1.57f

    .line 2122
    .line 2123
    .line 2124
    const/16 v21, 0x0

    .line 2125
    .line 2126
    const v22, 0x3f4a3d71    # 0.79f

    .line 2127
    .line 2128
    .line 2129
    const v23, -0x40ca3d71    # -0.71f

    .line 2130
    .line 2131
    .line 2132
    const v24, 0x3fc8f5c3    # 1.57f

    .line 2133
    .line 2134
    .line 2135
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 2136
    .line 2137
    .line 2138
    const v6, -0x40b851ec    # -0.78f

    .line 2139
    .line 2140
    .line 2141
    const v7, -0x40370a3d    # -1.57f

    .line 2142
    .line 2143
    .line 2144
    const/high16 v8, -0x40400000    # -1.5f

    .line 2145
    .line 2146
    invoke-virtual {v5, v8, v6, v8, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 2147
    .line 2148
    .line 2149
    const/high16 v6, -0x40600000    # -1.25f

    .line 2150
    .line 2151
    invoke-virtual {v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->m(F)V

    .line 2152
    .line 2153
    .line 2154
    const v25, -0x3f77ae14    # -4.26f

    .line 2155
    .line 2156
    .line 2157
    const v26, -0x3f5c28f6    # -5.12f

    .line 2158
    .line 2159
    .line 2160
    const v22, -0x3fdf5c29    # -2.51f

    .line 2161
    .line 2162
    .line 2163
    const v23, -0x401c28f6    # -1.78f

    .line 2164
    .line 2165
    .line 2166
    const v24, -0x3f675c29    # -4.77f

    .line 2167
    .line 2168
    .line 2169
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 2170
    .line 2171
    .line 2172
    const v25, -0x3f4ae148    # -5.66f

    .line 2173
    .line 2174
    .line 2175
    const v26, 0x40bbd70a    # 5.87f

    .line 2176
    .line 2177
    .line 2178
    const v21, -0x3fa66666    # -3.4f

    .line 2179
    .line 2180
    .line 2181
    const v22, -0x41051eb8    # -0.49f

    .line 2182
    .line 2183
    .line 2184
    const v23, -0x3f375c29    # -6.27f

    .line 2185
    .line 2186
    .line 2187
    const v24, 0x401ccccd    # 2.45f

    .line 2188
    .line 2189
    .line 2190
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 2191
    .line 2192
    .line 2193
    const v25, 0x406e147b    # 3.72f

    .line 2194
    .line 2195
    .line 2196
    const v26, 0x407c28f6    # 3.94f

    .line 2197
    .line 2198
    .line 2199
    const v21, 0x3eae147b    # 0.34f

    .line 2200
    .line 2201
    .line 2202
    const v22, 0x3ff47ae1    # 1.91f

    .line 2203
    .line 2204
    .line 2205
    const v23, 0x3fea3d71    # 1.83f

    .line 2206
    .line 2207
    .line 2208
    const v24, 0x405f5c29    # 3.49f

    .line 2209
    .line 2210
    .line 2211
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 2212
    .line 2213
    .line 2214
    const v25, 0x4097ae14    # 4.74f

    .line 2215
    .line 2216
    .line 2217
    const v26, -0x4055c28f    # -1.33f

    .line 2218
    .line 2219
    .line 2220
    const v21, 0x3feb851f    # 1.84f

    .line 2221
    .line 2222
    .line 2223
    const v22, 0x3edc28f6    # 0.43f

    .line 2224
    .line 2225
    .line 2226
    const v23, 0x4065c28f    # 3.59f

    .line 2227
    .line 2228
    .line 2229
    const v24, -0x41dc28f6    # -0.16f

    .line 2230
    .line 2231
    .line 2232
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 2233
    .line 2234
    .line 2235
    const v25, 0x4089999a    # 4.3f

    .line 2236
    .line 2237
    .line 2238
    const v26, 0x3f9ae148    # 1.21f

    .line 2239
    .line 2240
    .line 2241
    const v21, 0x3f63d70a    # 0.89f

    .line 2242
    .line 2243
    .line 2244
    const v22, 0x3f9c28f6    # 1.22f

    .line 2245
    .line 2246
    .line 2247
    const v23, 0x402ae148    # 2.67f

    .line 2248
    .line 2249
    .line 2250
    const v24, 0x3fee147b    # 1.86f

    .line 2251
    .line 2252
    .line 2253
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 2254
    .line 2255
    .line 2256
    const v25, 0x400a3d71    # 2.16f

    .line 2257
    .line 2258
    .line 2259
    const v26, -0x3faa3d71    # -3.34f

    .line 2260
    .line 2261
    .line 2262
    const v21, 0x3fab851f    # 1.34f

    .line 2263
    .line 2264
    .line 2265
    const v22, -0x40f851ec    # -0.53f

    .line 2266
    .line 2267
    .line 2268
    const v23, 0x400a3d71    # 2.16f

    .line 2269
    .line 2270
    .line 2271
    const v24, -0x400ccccd    # -1.9f

    .line 2272
    .line 2273
    .line 2274
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 2275
    .line 2276
    .line 2277
    const v6, -0x40747ae1    # -1.09f

    .line 2278
    .line 2279
    .line 2280
    invoke-virtual {v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->m(F)V

    .line 2281
    .line 2282
    .line 2283
    const v25, -0x3eeb851f    # -9.28f

    .line 2284
    .line 2285
    .line 2286
    const v26, -0x3edb5c29    # -10.29f

    .line 2287
    .line 2288
    .line 2289
    const/16 v21, 0x0

    .line 2290
    .line 2291
    const v22, -0x3f56147b    # -5.31f

    .line 2292
    .line 2293
    .line 2294
    const v23, -0x3f80a3d7    # -3.99f

    .line 2295
    .line 2296
    .line 2297
    const v24, -0x3ee11eb8    # -9.93f

    .line 2298
    .line 2299
    .line 2300
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 2301
    .line 2302
    .line 2303
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 2304
    .line 2305
    .line 2306
    const/high16 v6, 0x41700000    # 15.0f

    .line 2307
    .line 2308
    invoke-virtual {v5, v9, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 2309
    .line 2310
    .line 2311
    const/high16 v25, -0x3fc00000    # -3.0f

    .line 2312
    .line 2313
    const/high16 v26, -0x3fc00000    # -3.0f

    .line 2314
    .line 2315
    const v21, -0x402b851f    # -1.66f

    .line 2316
    .line 2317
    .line 2318
    const/16 v22, 0x0

    .line 2319
    .line 2320
    const/high16 v23, -0x3fc00000    # -3.0f

    .line 2321
    .line 2322
    const v24, -0x40547ae1    # -1.34f

    .line 2323
    .line 2324
    .line 2325
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 2326
    .line 2327
    .line 2328
    const v6, 0x3fab851f    # 1.34f

    .line 2329
    .line 2330
    .line 2331
    const/high16 v7, -0x3fc00000    # -3.0f

    .line 2332
    .line 2333
    const/high16 v8, 0x40400000    # 3.0f

    .line 2334
    .line 2335
    invoke-virtual {v5, v6, v7, v8, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 2336
    .line 2337
    .line 2338
    const/high16 v7, 0x40400000    # 3.0f

    .line 2339
    .line 2340
    invoke-virtual {v5, v7, v6, v7, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 2341
    .line 2342
    .line 2343
    const v6, -0x40547ae1    # -1.34f

    .line 2344
    .line 2345
    .line 2346
    const/high16 v7, -0x3fc00000    # -3.0f

    .line 2347
    .line 2348
    invoke-virtual {v5, v6, v8, v7, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 2349
    .line 2350
    .line 2351
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 2352
    .line 2353
    .line 2354
    iget-object v5, v5, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    .line 2355
    .line 2356
    invoke-static {v1, v5, v2}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;)V

    .line 2357
    .line 2358
    .line 2359
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 2360
    .line 2361
    .line 2362
    move-result-object v1

    .line 2363
    sput-object v1, Landroidx/compose/material/icons/rounded/AlternateEmailKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 2364
    .line 2365
    :goto_18
    invoke-static {v1, v14, v0, v4, v3}, Lnet/blip/android/ui/settings/SettingsComposablesKt;->c(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 2366
    .line 2367
    .line 2368
    goto :goto_19

    .line 2369
    :cond_24
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 2370
    .line 2371
    .line 2372
    :goto_19
    return-object v19

    .line 2373
    :pswitch_15
    move-object/from16 v0, p1

    .line 2374
    .line 2375
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 2376
    .line 2377
    move-object/from16 v1, p2

    .line 2378
    .line 2379
    check-cast v1, Ljava/lang/Integer;

    .line 2380
    .line 2381
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 2382
    .line 2383
    .line 2384
    move-result v1

    .line 2385
    and-int/lit8 v2, v1, 0x3

    .line 2386
    .line 2387
    if-eq v2, v3, :cond_25

    .line 2388
    .line 2389
    move/from16 v4, v18

    .line 2390
    .line 2391
    :cond_25
    and-int/lit8 v1, v1, 0x1

    .line 2392
    .line 2393
    move-object v10, v0

    .line 2394
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 2395
    .line 2396
    invoke-virtual {v10, v1, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 2397
    .line 2398
    .line 2399
    move-result v0

    .line 2400
    if-eqz v0, :cond_26

    .line 2401
    .line 2402
    const/16 v11, 0x1b0

    .line 2403
    .line 2404
    const/16 v12, 0x9

    .line 2405
    .line 2406
    const/4 v5, 0x0

    .line 2407
    const-string v6, "Discord"

    .line 2408
    .line 2409
    const-string v7, "Join our community!"

    .line 2410
    .line 2411
    const-wide/16 v8, 0x0

    .line 2412
    .line 2413
    invoke-static/range {v5 .. v12}, Lnet/blip/android/ui/list/ListRowKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;JLandroidx/compose/runtime/Composer;II)V

    .line 2414
    .line 2415
    .line 2416
    goto :goto_1a

    .line 2417
    :cond_26
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 2418
    .line 2419
    .line 2420
    :goto_1a
    return-object v19

    .line 2421
    :pswitch_16
    move-object/from16 v0, p1

    .line 2422
    .line 2423
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 2424
    .line 2425
    move-object/from16 v1, p2

    .line 2426
    .line 2427
    check-cast v1, Ljava/lang/Integer;

    .line 2428
    .line 2429
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 2430
    .line 2431
    .line 2432
    move-result v1

    .line 2433
    and-int/lit8 v5, v1, 0x3

    .line 2434
    .line 2435
    if-eq v5, v3, :cond_27

    .line 2436
    .line 2437
    move/from16 v5, v18

    .line 2438
    .line 2439
    goto :goto_1b

    .line 2440
    :cond_27
    move v5, v4

    .line 2441
    :goto_1b
    and-int/lit8 v1, v1, 0x1

    .line 2442
    .line 2443
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 2444
    .line 2445
    invoke-virtual {v0, v1, v5}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 2446
    .line 2447
    .line 2448
    move-result v1

    .line 2449
    if-eqz v1, :cond_29

    .line 2450
    .line 2451
    sget-object v1, Landroidx/compose/material/icons/rounded/ForumKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 2452
    .line 2453
    if-eqz v1, :cond_28

    .line 2454
    .line 2455
    move v13, v3

    .line 2456
    move v6, v4

    .line 2457
    goto/16 :goto_1c

    .line 2458
    .line 2459
    :cond_28
    new-instance v20, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 2460
    .line 2461
    const/16 v28, 0x0

    .line 2462
    .line 2463
    const/16 v30, 0x60

    .line 2464
    .line 2465
    const-string v21, "Rounded.Forum"

    .line 2466
    .line 2467
    const/high16 v22, 0x41c00000    # 24.0f

    .line 2468
    .line 2469
    const/high16 v23, 0x41c00000    # 24.0f

    .line 2470
    .line 2471
    const/high16 v24, 0x41c00000    # 24.0f

    .line 2472
    .line 2473
    const/high16 v25, 0x41c00000    # 24.0f

    .line 2474
    .line 2475
    const-wide/16 v26, 0x0

    .line 2476
    .line 2477
    const/16 v29, 0x0

    .line 2478
    .line 2479
    invoke-direct/range {v20 .. v30}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 2480
    .line 2481
    .line 2482
    move-object/from16 v1, v20

    .line 2483
    .line 2484
    sget v5, Landroidx/compose/ui/graphics/vector/VectorKt;->a:I

    .line 2485
    .line 2486
    new-instance v5, Landroidx/compose/ui/graphics/SolidColor;

    .line 2487
    .line 2488
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->b:J

    .line 2489
    .line 2490
    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 2491
    .line 2492
    .line 2493
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 2494
    .line 2495
    invoke-direct {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 2496
    .line 2497
    .line 2498
    invoke-virtual {v3, v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 2499
    .line 2500
    .line 2501
    const/high16 v4, -0x40800000    # -1.0f

    .line 2502
    .line 2503
    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 2504
    .line 2505
    .line 2506
    const/high16 v4, 0x41000000    # 8.0f

    .line 2507
    .line 2508
    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->m(F)V

    .line 2509
    .line 2510
    .line 2511
    const/high16 v25, -0x40800000    # -1.0f

    .line 2512
    .line 2513
    const/high16 v26, 0x3f800000    # 1.0f

    .line 2514
    .line 2515
    const/16 v21, 0x0

    .line 2516
    .line 2517
    const v22, 0x3f0ccccd    # 0.55f

    .line 2518
    .line 2519
    .line 2520
    const v23, -0x4119999a    # -0.45f

    .line 2521
    .line 2522
    .line 2523
    const/high16 v24, 0x3f800000    # 1.0f

    .line 2524
    .line 2525
    move-object/from16 v20, v3

    .line 2526
    .line 2527
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 2528
    .line 2529
    .line 2530
    const/high16 v8, 0x41700000    # 15.0f

    .line 2531
    .line 2532
    invoke-virtual {v3, v11, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 2533
    .line 2534
    .line 2535
    invoke-virtual {v3, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->m(F)V

    .line 2536
    .line 2537
    .line 2538
    const/high16 v25, 0x40000000    # 2.0f

    .line 2539
    .line 2540
    const/high16 v26, 0x40000000    # 2.0f

    .line 2541
    .line 2542
    const v22, 0x3f8ccccd    # 1.1f

    .line 2543
    .line 2544
    .line 2545
    const v23, 0x3f666666    # 0.9f

    .line 2546
    .line 2547
    .line 2548
    const/high16 v24, 0x40000000    # 2.0f

    .line 2549
    .line 2550
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 2551
    .line 2552
    .line 2553
    const/high16 v8, 0x41200000    # 10.0f

    .line 2554
    .line 2555
    invoke-virtual {v3, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 2556
    .line 2557
    .line 2558
    invoke-virtual {v3, v15, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 2559
    .line 2560
    .line 2561
    invoke-virtual {v3, v12, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 2562
    .line 2563
    .line 2564
    const/high16 v25, -0x40000000    # -2.0f

    .line 2565
    .line 2566
    const/high16 v26, -0x40000000    # -2.0f

    .line 2567
    .line 2568
    const v22, -0x40733333    # -1.1f

    .line 2569
    .line 2570
    .line 2571
    const v23, -0x4099999a    # -0.9f

    .line 2572
    .line 2573
    .line 2574
    const/high16 v24, -0x40000000    # -2.0f

    .line 2575
    .line 2576
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 2577
    .line 2578
    .line 2579
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 2580
    .line 2581
    .line 2582
    const/high16 v4, 0x41880000    # 17.0f

    .line 2583
    .line 2584
    invoke-virtual {v3, v4, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 2585
    .line 2586
    .line 2587
    invoke-virtual {v3, v4, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 2588
    .line 2589
    .line 2590
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 2591
    .line 2592
    .line 2593
    const/high16 v4, 0x40000000    # 2.0f

    .line 2594
    .line 2595
    invoke-virtual {v3, v15, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 2596
    .line 2597
    .line 2598
    const/high16 v26, 0x40000000    # 2.0f

    .line 2599
    .line 2600
    const v21, -0x40733333    # -1.1f

    .line 2601
    .line 2602
    .line 2603
    const/16 v22, 0x0

    .line 2604
    .line 2605
    const/high16 v23, -0x40000000    # -2.0f

    .line 2606
    .line 2607
    const v24, 0x3f666666    # 0.9f

    .line 2608
    .line 2609
    .line 2610
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 2611
    .line 2612
    .line 2613
    const/high16 v4, 0x41500000    # 13.0f

    .line 2614
    .line 2615
    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->m(F)V

    .line 2616
    .line 2617
    .line 2618
    invoke-virtual {v3, v15, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 2619
    .line 2620
    .line 2621
    const/high16 v2, 0x41100000    # 9.0f

    .line 2622
    .line 2623
    invoke-virtual {v3, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 2624
    .line 2625
    .line 2626
    const/high16 v25, 0x40000000    # 2.0f

    .line 2627
    .line 2628
    const/high16 v26, -0x40000000    # -2.0f

    .line 2629
    .line 2630
    const v21, 0x3f8ccccd    # 1.1f

    .line 2631
    .line 2632
    .line 2633
    const/high16 v23, 0x40000000    # 2.0f

    .line 2634
    .line 2635
    const v24, -0x4099999a    # -0.9f

    .line 2636
    .line 2637
    .line 2638
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 2639
    .line 2640
    .line 2641
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 2642
    .line 2643
    .line 2644
    iget-object v2, v3, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    .line 2645
    .line 2646
    invoke-static {v1, v2, v5}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;)V

    .line 2647
    .line 2648
    .line 2649
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 2650
    .line 2651
    .line 2652
    move-result-object v1

    .line 2653
    sput-object v1, Landroidx/compose/material/icons/rounded/ForumKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 2654
    .line 2655
    const/4 v6, 0x0

    .line 2656
    const/4 v13, 0x2

    .line 2657
    :goto_1c
    invoke-static {v1, v14, v0, v6, v13}, Lnet/blip/android/ui/settings/SettingsComposablesKt;->c(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 2658
    .line 2659
    .line 2660
    goto :goto_1d

    .line 2661
    :cond_29
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 2662
    .line 2663
    .line 2664
    :goto_1d
    return-object v19

    .line 2665
    :pswitch_17
    move v13, v3

    .line 2666
    move-object/from16 v0, p1

    .line 2667
    .line 2668
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 2669
    .line 2670
    move-object/from16 v1, p2

    .line 2671
    .line 2672
    check-cast v1, Ljava/lang/Integer;

    .line 2673
    .line 2674
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 2675
    .line 2676
    .line 2677
    move-result v1

    .line 2678
    and-int/lit8 v2, v1, 0x3

    .line 2679
    .line 2680
    if-eq v2, v13, :cond_2a

    .line 2681
    .line 2682
    move/from16 v4, v18

    .line 2683
    .line 2684
    goto :goto_1e

    .line 2685
    :cond_2a
    const/4 v4, 0x0

    .line 2686
    :goto_1e
    and-int/lit8 v1, v1, 0x1

    .line 2687
    .line 2688
    move-object v8, v0

    .line 2689
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 2690
    .line 2691
    invoke-virtual {v8, v1, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 2692
    .line 2693
    .line 2694
    move-result v0

    .line 2695
    if-eqz v0, :cond_2b

    .line 2696
    .line 2697
    const/16 v9, 0x30

    .line 2698
    .line 2699
    const/4 v10, 0x5

    .line 2700
    const/4 v5, 0x0

    .line 2701
    const-string v6, "Settings"

    .line 2702
    .line 2703
    const/4 v7, 0x0

    .line 2704
    invoke-static/range {v5 .. v10}, Lnet/blip/android/ui/lockups/ScreenLockupKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    .line 2705
    .line 2706
    .line 2707
    goto :goto_1f

    .line 2708
    :cond_2b
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 2709
    .line 2710
    .line 2711
    :goto_1f
    return-object v19

    .line 2712
    :pswitch_18
    move-object/from16 v0, p1

    .line 2713
    .line 2714
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 2715
    .line 2716
    move-object/from16 v1, p2

    .line 2717
    .line 2718
    check-cast v1, Ljava/lang/Integer;

    .line 2719
    .line 2720
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 2721
    .line 2722
    .line 2723
    move-result v1

    .line 2724
    and-int/lit8 v2, v1, 0x3

    .line 2725
    .line 2726
    const/4 v13, 0x2

    .line 2727
    if-eq v2, v13, :cond_2c

    .line 2728
    .line 2729
    move/from16 v2, v18

    .line 2730
    .line 2731
    goto :goto_20

    .line 2732
    :cond_2c
    const/4 v2, 0x0

    .line 2733
    :goto_20
    and-int/lit8 v1, v1, 0x1

    .line 2734
    .line 2735
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 2736
    .line 2737
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 2738
    .line 2739
    .line 2740
    move-result v1

    .line 2741
    if-eqz v1, :cond_2d

    .line 2742
    .line 2743
    invoke-static {}, Landroidx/compose/material/icons/rounded/SearchKt;->a()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 2744
    .line 2745
    .line 2746
    move-result-object v1

    .line 2747
    const/4 v6, 0x0

    .line 2748
    invoke-static {v1, v14, v0, v6, v13}, Lnet/blip/android/ui/settings/SettingsComposablesKt;->c(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 2749
    .line 2750
    .line 2751
    goto :goto_21

    .line 2752
    :cond_2d
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 2753
    .line 2754
    .line 2755
    :goto_21
    return-object v19

    .line 2756
    :pswitch_19
    move v13, v3

    .line 2757
    move-object/from16 v0, p1

    .line 2758
    .line 2759
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 2760
    .line 2761
    move-object/from16 v1, p2

    .line 2762
    .line 2763
    check-cast v1, Ljava/lang/Integer;

    .line 2764
    .line 2765
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 2766
    .line 2767
    .line 2768
    move-result v1

    .line 2769
    and-int/lit8 v2, v1, 0x3

    .line 2770
    .line 2771
    if-eq v2, v13, :cond_2e

    .line 2772
    .line 2773
    move/from16 v2, v18

    .line 2774
    .line 2775
    goto :goto_22

    .line 2776
    :cond_2e
    const/4 v2, 0x0

    .line 2777
    :goto_22
    and-int/lit8 v1, v1, 0x1

    .line 2778
    .line 2779
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 2780
    .line 2781
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 2782
    .line 2783
    .line 2784
    move-result v1

    .line 2785
    if-eqz v1, :cond_2f

    .line 2786
    .line 2787
    invoke-static {}, Landroidx/compose/material/icons/rounded/EditKt;->a()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 2788
    .line 2789
    .line 2790
    move-result-object v1

    .line 2791
    const/4 v6, 0x0

    .line 2792
    invoke-static {v1, v14, v0, v6, v13}, Lnet/blip/android/ui/settings/SettingsComposablesKt;->c(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 2793
    .line 2794
    .line 2795
    goto :goto_23

    .line 2796
    :cond_2f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 2797
    .line 2798
    .line 2799
    :goto_23
    return-object v19

    .line 2800
    :pswitch_1a
    move v13, v3

    .line 2801
    move-object/from16 v0, p1

    .line 2802
    .line 2803
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 2804
    .line 2805
    move-object/from16 v1, p2

    .line 2806
    .line 2807
    check-cast v1, Ljava/lang/Integer;

    .line 2808
    .line 2809
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 2810
    .line 2811
    .line 2812
    move-result v1

    .line 2813
    and-int/lit8 v2, v1, 0x3

    .line 2814
    .line 2815
    if-eq v2, v13, :cond_30

    .line 2816
    .line 2817
    move/from16 v4, v18

    .line 2818
    .line 2819
    goto :goto_24

    .line 2820
    :cond_30
    const/4 v4, 0x0

    .line 2821
    :goto_24
    and-int/lit8 v1, v1, 0x1

    .line 2822
    .line 2823
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 2824
    .line 2825
    invoke-virtual {v0, v1, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 2826
    .line 2827
    .line 2828
    move-result v1

    .line 2829
    if-eqz v1, :cond_31

    .line 2830
    .line 2831
    const/16 v1, 0x30

    .line 2832
    .line 2833
    invoke-static {v14, v0, v1}, Lnet/blip/android/ui/settings/SettingsComposablesKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 2834
    .line 2835
    .line 2836
    goto :goto_25

    .line 2837
    :cond_31
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 2838
    .line 2839
    .line 2840
    :goto_25
    return-object v19

    .line 2841
    :pswitch_1b
    move-object/from16 v0, p1

    .line 2842
    .line 2843
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 2844
    .line 2845
    move-object/from16 v1, p2

    .line 2846
    .line 2847
    check-cast v1, Ljava/lang/Integer;

    .line 2848
    .line 2849
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 2850
    .line 2851
    .line 2852
    move-result v1

    .line 2853
    and-int/lit8 v2, v1, 0x3

    .line 2854
    .line 2855
    const/4 v13, 0x2

    .line 2856
    if-eq v2, v13, :cond_32

    .line 2857
    .line 2858
    move/from16 v2, v18

    .line 2859
    .line 2860
    goto :goto_26

    .line 2861
    :cond_32
    const/4 v2, 0x0

    .line 2862
    :goto_26
    and-int/lit8 v1, v1, 0x1

    .line 2863
    .line 2864
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 2865
    .line 2866
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 2867
    .line 2868
    .line 2869
    move-result v1

    .line 2870
    if-eqz v1, :cond_34

    .line 2871
    .line 2872
    sget-object v1, Landroidx/compose/material/icons/rounded/DeleteForeverKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 2873
    .line 2874
    if-eqz v1, :cond_33

    .line 2875
    .line 2876
    goto/16 :goto_27

    .line 2877
    .line 2878
    :cond_33
    new-instance v20, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 2879
    .line 2880
    const/16 v28, 0x0

    .line 2881
    .line 2882
    const/16 v30, 0x60

    .line 2883
    .line 2884
    const/16 v29, 0x0

    .line 2885
    .line 2886
    const/high16 v22, 0x41c00000    # 24.0f

    .line 2887
    .line 2888
    const/high16 v23, 0x41c00000    # 24.0f

    .line 2889
    .line 2890
    const/high16 v24, 0x41c00000    # 24.0f

    .line 2891
    .line 2892
    const/high16 v25, 0x41c00000    # 24.0f

    .line 2893
    .line 2894
    const-wide/16 v26, 0x0

    .line 2895
    .line 2896
    const-string v21, "Rounded.DeleteForever"

    .line 2897
    .line 2898
    invoke-direct/range {v20 .. v30}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 2899
    .line 2900
    .line 2901
    move-object/from16 v1, v20

    .line 2902
    .line 2903
    sget v2, Landroidx/compose/ui/graphics/vector/VectorKt;->a:I

    .line 2904
    .line 2905
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    .line 2906
    .line 2907
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->b:J

    .line 2908
    .line 2909
    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 2910
    .line 2911
    .line 2912
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 2913
    .line 2914
    invoke-direct {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 2915
    .line 2916
    .line 2917
    const/high16 v4, 0x41980000    # 19.0f

    .line 2918
    .line 2919
    invoke-virtual {v3, v11, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 2920
    .line 2921
    .line 2922
    const/high16 v25, 0x40000000    # 2.0f

    .line 2923
    .line 2924
    const/high16 v26, 0x40000000    # 2.0f

    .line 2925
    .line 2926
    const/16 v21, 0x0

    .line 2927
    .line 2928
    const v22, 0x3f8ccccd    # 1.1f

    .line 2929
    .line 2930
    .line 2931
    const v23, 0x3f666666    # 0.9f

    .line 2932
    .line 2933
    .line 2934
    const/high16 v24, 0x40000000    # 2.0f

    .line 2935
    .line 2936
    move-object/from16 v20, v3

    .line 2937
    .line 2938
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 2939
    .line 2940
    .line 2941
    const/high16 v4, 0x41000000    # 8.0f

    .line 2942
    .line 2943
    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 2944
    .line 2945
    .line 2946
    const/high16 v26, -0x40000000    # -2.0f

    .line 2947
    .line 2948
    const v21, 0x3f8ccccd    # 1.1f

    .line 2949
    .line 2950
    .line 2951
    const/16 v22, 0x0

    .line 2952
    .line 2953
    const/high16 v23, 0x40000000    # 2.0f

    .line 2954
    .line 2955
    const v24, -0x4099999a    # -0.9f

    .line 2956
    .line 2957
    .line 2958
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 2959
    .line 2960
    .line 2961
    invoke-virtual {v3, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->l(F)V

    .line 2962
    .line 2963
    .line 2964
    invoke-virtual {v3, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->e(F)V

    .line 2965
    .line 2966
    .line 2967
    const/high16 v4, 0x41980000    # 19.0f

    .line 2968
    .line 2969
    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->l(F)V

    .line 2970
    .line 2971
    .line 2972
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 2973
    .line 2974
    .line 2975
    const v4, 0x4112b852    # 9.17f

    .line 2976
    .line 2977
    .line 2978
    const v5, 0x414970a4    # 12.59f

    .line 2979
    .line 2980
    .line 2981
    invoke-virtual {v3, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 2982
    .line 2983
    .line 2984
    const/16 v25, 0x0

    .line 2985
    .line 2986
    const v26, -0x404b851f    # -1.41f

    .line 2987
    .line 2988
    .line 2989
    const v21, -0x413851ec    # -0.39f

    .line 2990
    .line 2991
    .line 2992
    const v22, -0x413851ec    # -0.39f

    .line 2993
    .line 2994
    .line 2995
    const v23, -0x413851ec    # -0.39f

    .line 2996
    .line 2997
    .line 2998
    const v24, -0x407d70a4    # -1.02f

    .line 2999
    .line 3000
    .line 3001
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 3002
    .line 3003
    .line 3004
    const v25, 0x3fb47ae1    # 1.41f

    .line 3005
    .line 3006
    .line 3007
    const/16 v26, 0x0

    .line 3008
    .line 3009
    const v21, 0x3ec7ae14    # 0.39f

    .line 3010
    .line 3011
    .line 3012
    const v23, 0x3f828f5c    # 1.02f

    .line 3013
    .line 3014
    .line 3015
    const v24, -0x413851ec    # -0.39f

    .line 3016
    .line 3017
    .line 3018
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 3019
    .line 3020
    .line 3021
    const v4, 0x414970a4    # 12.59f

    .line 3022
    .line 3023
    .line 3024
    invoke-virtual {v3, v9, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 3025
    .line 3026
    .line 3027
    const v4, -0x404b851f    # -1.41f

    .line 3028
    .line 3029
    .line 3030
    const v5, 0x3fb47ae1    # 1.41f

    .line 3031
    .line 3032
    .line 3033
    invoke-virtual {v3, v5, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 3034
    .line 3035
    .line 3036
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 3037
    .line 3038
    .line 3039
    const v4, 0x3f828f5c    # 1.02f

    .line 3040
    .line 3041
    .line 3042
    const/4 v5, 0x0

    .line 3043
    const v7, 0x3ec7ae14    # 0.39f

    .line 3044
    .line 3045
    .line 3046
    const v8, 0x3fb47ae1    # 1.41f

    .line 3047
    .line 3048
    .line 3049
    invoke-virtual {v3, v7, v4, v5, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 3050
    .line 3051
    .line 3052
    const v4, 0x41568f5c    # 13.41f

    .line 3053
    .line 3054
    .line 3055
    const/high16 v5, 0x41600000    # 14.0f

    .line 3056
    .line 3057
    invoke-virtual {v3, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 3058
    .line 3059
    .line 3060
    const v4, 0x3fb47ae1    # 1.41f

    .line 3061
    .line 3062
    .line 3063
    invoke-virtual {v3, v4, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 3064
    .line 3065
    .line 3066
    const/16 v25, 0x0

    .line 3067
    .line 3068
    const v26, 0x3fb47ae1    # 1.41f

    .line 3069
    .line 3070
    .line 3071
    const v22, 0x3ec7ae14    # 0.39f

    .line 3072
    .line 3073
    .line 3074
    const v23, 0x3ec7ae14    # 0.39f

    .line 3075
    .line 3076
    .line 3077
    const v24, 0x3f828f5c    # 1.02f

    .line 3078
    .line 3079
    .line 3080
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 3081
    .line 3082
    .line 3083
    const v4, -0x407d70a4    # -1.02f

    .line 3084
    .line 3085
    .line 3086
    const/4 v5, 0x0

    .line 3087
    const v8, -0x404b851f    # -1.41f

    .line 3088
    .line 3089
    .line 3090
    invoke-virtual {v3, v4, v7, v8, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 3091
    .line 3092
    .line 3093
    const v4, 0x41768f5c    # 15.41f

    .line 3094
    .line 3095
    .line 3096
    invoke-virtual {v3, v9, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 3097
    .line 3098
    .line 3099
    const v4, -0x404b851f    # -1.41f

    .line 3100
    .line 3101
    .line 3102
    const v5, 0x3fb47ae1    # 1.41f

    .line 3103
    .line 3104
    .line 3105
    invoke-virtual {v3, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 3106
    .line 3107
    .line 3108
    const v25, -0x404b851f    # -1.41f

    .line 3109
    .line 3110
    .line 3111
    const/16 v26, 0x0

    .line 3112
    .line 3113
    const v21, -0x413851ec    # -0.39f

    .line 3114
    .line 3115
    .line 3116
    const v23, -0x407d70a4    # -1.02f

    .line 3117
    .line 3118
    .line 3119
    const v24, 0x3ec7ae14    # 0.39f

    .line 3120
    .line 3121
    .line 3122
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 3123
    .line 3124
    .line 3125
    const/16 v25, 0x0

    .line 3126
    .line 3127
    const v26, -0x404b851f    # -1.41f

    .line 3128
    .line 3129
    .line 3130
    const v22, -0x413851ec    # -0.39f

    .line 3131
    .line 3132
    .line 3133
    const v23, -0x413851ec    # -0.39f

    .line 3134
    .line 3135
    .line 3136
    const v24, -0x407d70a4    # -1.02f

    .line 3137
    .line 3138
    .line 3139
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 3140
    .line 3141
    .line 3142
    const v4, 0x412970a4    # 10.59f

    .line 3143
    .line 3144
    .line 3145
    const/high16 v5, 0x41600000    # 14.0f

    .line 3146
    .line 3147
    invoke-virtual {v3, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 3148
    .line 3149
    .line 3150
    const v4, 0x4112b852    # 9.17f

    .line 3151
    .line 3152
    .line 3153
    const v5, 0x414970a4    # 12.59f

    .line 3154
    .line 3155
    .line 3156
    invoke-virtual {v3, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 3157
    .line 3158
    .line 3159
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 3160
    .line 3161
    .line 3162
    const/high16 v4, 0x41900000    # 18.0f

    .line 3163
    .line 3164
    invoke-virtual {v3, v4, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 3165
    .line 3166
    .line 3167
    const/high16 v4, -0x3fe00000    # -2.5f

    .line 3168
    .line 3169
    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 3170
    .line 3171
    .line 3172
    const v4, -0x40ca3d71    # -0.71f

    .line 3173
    .line 3174
    .line 3175
    invoke-virtual {v3, v4, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 3176
    .line 3177
    .line 3178
    const v25, 0x416170a4    # 14.09f

    .line 3179
    .line 3180
    .line 3181
    const/high16 v26, 0x40400000    # 3.0f

    .line 3182
    .line 3183
    const v21, 0x4169c28f    # 14.61f

    .line 3184
    .line 3185
    .line 3186
    const v22, 0x40470a3d    # 3.11f

    .line 3187
    .line 3188
    .line 3189
    const v23, 0x4165999a    # 14.35f

    .line 3190
    .line 3191
    .line 3192
    const/high16 v24, 0x40400000    # 3.0f

    .line 3193
    .line 3194
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(FFFFFF)V

    .line 3195
    .line 3196
    .line 3197
    const v4, 0x411e8f5c    # 9.91f

    .line 3198
    .line 3199
    .line 3200
    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->e(F)V

    .line 3201
    .line 3202
    .line 3203
    const v25, -0x40cccccd    # -0.7f

    .line 3204
    .line 3205
    .line 3206
    const v26, 0x3e947ae1    # 0.29f

    .line 3207
    .line 3208
    .line 3209
    const v21, -0x417ae148    # -0.26f

    .line 3210
    .line 3211
    .line 3212
    const/16 v22, 0x0

    .line 3213
    .line 3214
    const v23, -0x40fae148    # -0.52f

    .line 3215
    .line 3216
    .line 3217
    const v24, 0x3de147ae    # 0.11f

    .line 3218
    .line 3219
    .line 3220
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 3221
    .line 3222
    .line 3223
    const/high16 v4, 0x41080000    # 8.5f

    .line 3224
    .line 3225
    invoke-virtual {v3, v4, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 3226
    .line 3227
    .line 3228
    invoke-virtual {v3, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->e(F)V

    .line 3229
    .line 3230
    .line 3231
    const/high16 v25, 0x40a00000    # 5.0f

    .line 3232
    .line 3233
    const/high16 v26, 0x40a00000    # 5.0f

    .line 3234
    .line 3235
    const v21, 0x40ae6666    # 5.45f

    .line 3236
    .line 3237
    .line 3238
    const/high16 v22, 0x40800000    # 4.0f

    .line 3239
    .line 3240
    const/high16 v23, 0x40a00000    # 5.0f

    .line 3241
    .line 3242
    const v24, 0x408e6666    # 4.45f

    .line 3243
    .line 3244
    .line 3245
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(FFFFFF)V

    .line 3246
    .line 3247
    .line 3248
    const v4, 0x3ee66666    # 0.45f

    .line 3249
    .line 3250
    .line 3251
    invoke-virtual {v3, v4, v10, v10, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 3252
    .line 3253
    .line 3254
    invoke-virtual {v3, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 3255
    .line 3256
    .line 3257
    const/high16 v25, 0x3f800000    # 1.0f

    .line 3258
    .line 3259
    const/high16 v26, -0x40800000    # -1.0f

    .line 3260
    .line 3261
    const v21, 0x3f0ccccd    # 0.55f

    .line 3262
    .line 3263
    .line 3264
    const/16 v22, 0x0

    .line 3265
    .line 3266
    const/high16 v23, 0x3f800000    # 1.0f

    .line 3267
    .line 3268
    const v24, -0x4119999a    # -0.45f

    .line 3269
    .line 3270
    .line 3271
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 3272
    .line 3273
    .line 3274
    const v4, 0x41946666    # 18.55f

    .line 3275
    .line 3276
    .line 3277
    const/high16 v5, 0x41900000    # 18.0f

    .line 3278
    .line 3279
    invoke-virtual {v3, v4, v15, v5, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->j(FFFF)V

    .line 3280
    .line 3281
    .line 3282
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 3283
    .line 3284
    .line 3285
    iget-object v3, v3, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    .line 3286
    .line 3287
    invoke-static {v1, v3, v2}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;)V

    .line 3288
    .line 3289
    .line 3290
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 3291
    .line 3292
    .line 3293
    move-result-object v1

    .line 3294
    sput-object v1, Landroidx/compose/material/icons/rounded/DeleteForeverKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 3295
    .line 3296
    :goto_27
    sget-object v2, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 3297
    .line 3298
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 3299
    .line 3300
    .line 3301
    move-result-object v2

    .line 3302
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 3303
    .line 3304
    iget-wide v2, v2, Lnet/blip/android/ui/androidtheme/AndroidColors;->g:J

    .line 3305
    .line 3306
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    .line 3307
    .line 3308
    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 3309
    .line 3310
    .line 3311
    const/4 v6, 0x0

    .line 3312
    invoke-static {v1, v4, v0, v6, v6}, Lnet/blip/android/ui/settings/SettingsComposablesKt;->c(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 3313
    .line 3314
    .line 3315
    goto :goto_28

    .line 3316
    :cond_34
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 3317
    .line 3318
    .line 3319
    :goto_28
    return-object v19

    .line 3320
    :pswitch_1c
    move-object/from16 v0, p1

    .line 3321
    .line 3322
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 3323
    .line 3324
    move-object/from16 v1, p2

    .line 3325
    .line 3326
    check-cast v1, Ljava/lang/Integer;

    .line 3327
    .line 3328
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 3329
    .line 3330
    .line 3331
    move-result v1

    .line 3332
    and-int/lit8 v2, v1, 0x3

    .line 3333
    .line 3334
    const/4 v13, 0x2

    .line 3335
    if-eq v2, v13, :cond_35

    .line 3336
    .line 3337
    move/from16 v2, v18

    .line 3338
    .line 3339
    goto :goto_29

    .line 3340
    :cond_35
    const/4 v2, 0x0

    .line 3341
    :goto_29
    and-int/lit8 v1, v1, 0x1

    .line 3342
    .line 3343
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 3344
    .line 3345
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 3346
    .line 3347
    .line 3348
    move-result v1

    .line 3349
    if-eqz v1, :cond_36

    .line 3350
    .line 3351
    invoke-static {}, Landroidx/compose/material/icons/rounded/EditKt;->a()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 3352
    .line 3353
    .line 3354
    move-result-object v1

    .line 3355
    const/4 v6, 0x0

    .line 3356
    invoke-static {v1, v14, v0, v6, v13}, Lnet/blip/android/ui/settings/SettingsComposablesKt;->c(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 3357
    .line 3358
    .line 3359
    goto :goto_2a

    .line 3360
    :cond_36
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 3361
    .line 3362
    .line 3363
    :goto_2a
    return-object v19

    .line 3364
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
