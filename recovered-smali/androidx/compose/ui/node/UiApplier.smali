.class public final Landroidx/compose/ui/node/UiApplier;
.super Landroidx/compose/runtime/AbstractApplier;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/runtime/AbstractApplier<",
        "Landroidx/compose/ui/node/LayoutNode;",
        ">;"
    }
.end annotation


# virtual methods
.method public final b(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/runtime/AbstractApplier;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNode;->F(ILandroidx/compose/ui/node/LayoutNode;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final d()V
    .locals 7

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/AbstractApplier;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v1, "onReuse is only expected on attached node"

    .line 14
    .line 15
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->x:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget-object v2, v1, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->k:Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eq v3, v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v1, v1, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->o:Lkotlin/jvm/functions/Function0;

    .line 35
    .line 36
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->Q:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->i(Z)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iput-boolean v2, p0, Landroidx/compose/ui/node/LayoutNode;->C:Z

    .line 48
    .line 49
    iget-boolean v1, p0, Landroidx/compose/ui/node/LayoutNode;->Z:Z

    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    iput-boolean v2, p0, Landroidx/compose/ui/node/LayoutNode;->Z:Z

    .line 54
    .line 55
    goto :goto_4

    .line 56
    :cond_4
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 57
    .line 58
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 59
    .line 60
    move-object v3, v1

    .line 61
    :goto_1
    if-eqz v3, :cond_6

    .line 62
    .line 63
    iget-boolean v4, v3, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 64
    .line 65
    if-eqz v4, :cond_5

    .line 66
    .line 67
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->T0()V

    .line 68
    .line 69
    .line 70
    :cond_5
    iget-object v3, v3, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_6
    move-object v3, v1

    .line 74
    :goto_2
    if-eqz v3, :cond_8

    .line 75
    .line 76
    iget-boolean v4, v3, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 77
    .line 78
    if-eqz v4, :cond_7

    .line 79
    .line 80
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->V0()V

    .line 81
    .line 82
    .line 83
    :cond_7
    iget-object v3, v3, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_8
    :goto_3
    if-eqz v1, :cond_a

    .line 87
    .line 88
    iget-boolean v3, v1, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 89
    .line 90
    if-eqz v3, :cond_9

    .line 91
    .line 92
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->P0()V

    .line 93
    .line 94
    .line 95
    :cond_9
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_a
    :goto_4
    iget v1, p0, Landroidx/compose/ui/node/LayoutNode;->k:I

    .line 99
    .line 100
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 101
    .line 102
    if-eqz v3, :cond_b

    .line 103
    .line 104
    invoke-interface {v3}, Landroidx/compose/ui/node/Owner;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    if-eqz v3, :cond_b

    .line 109
    .line 110
    invoke-virtual {v3, p0}, Landroidx/compose/ui/spatial/RectManager;->i(Landroidx/compose/ui/node/LayoutNode;)V

    .line 111
    .line 112
    .line 113
    :cond_b
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsModifierKt;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 114
    .line 115
    const/4 v4, 0x1

    .line 116
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    iput v3, p0, Landroidx/compose/ui/node/LayoutNode;->k:I

    .line 121
    .line 122
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 123
    .line 124
    if-eqz v3, :cond_c

    .line 125
    .line 126
    check-cast v3, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 127
    .line 128
    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getLayoutNodes()Landroidx/collection/MutableIntObjectMap;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-virtual {v5, v1}, Landroidx/collection/MutableIntObjectMap;->g(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getLayoutNodes()Landroidx/collection/MutableIntObjectMap;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    iget v5, p0, Landroidx/compose/ui/node/LayoutNode;->k:I

    .line 140
    .line 141
    invoke-virtual {v3, v5, p0}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :cond_c
    iget-object v3, v0, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 145
    .line 146
    :goto_5
    if-eqz v3, :cond_d

    .line 147
    .line 148
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->O0()V

    .line 149
    .line 150
    .line 151
    iget-object v3, v3, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_d
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->e()V

    .line 155
    .line 156
    .line 157
    const/16 v3, 0x8

    .line 158
    .line 159
    invoke-virtual {v0, v3}, Landroidx/compose/ui/node/NodeChain;->d(I)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_e

    .line 164
    .line 165
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->J()V

    .line 166
    .line 167
    .line 168
    :cond_e
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNode;->a0(Landroidx/compose/ui/node/LayoutNode;)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 172
    .line 173
    if-eqz v0, :cond_10

    .line 174
    .line 175
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 176
    .line 177
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAutofillManager()Landroidx/compose/ui/autofill/AndroidAutofillManager;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    if-eqz v0, :cond_10

    .line 182
    .line 183
    iget-object v3, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->l:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 184
    .line 185
    iget-object v5, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->j:Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;

    .line 186
    .line 187
    iget-object v0, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->q:Landroidx/collection/MutableIntSet;

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Landroidx/collection/MutableIntSet;->f(I)Z

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    if-eqz v6, :cond_f

    .line 194
    .line 195
    invoke-virtual {v5, v3, v1, v2}, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->b(Landroid/view/View;IZ)V

    .line 196
    .line 197
    .line 198
    :cond_f
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->y()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    if-eqz v1, :cond_10

    .line 203
    .line 204
    iget-object v1, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 205
    .line 206
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->r:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 207
    .line 208
    invoke-virtual {v1, v2}, Landroidx/collection/ScatterMap;->b(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-ne v1, v4, :cond_10

    .line 213
    .line 214
    iget v1, p0, Landroidx/compose/ui/node/LayoutNode;->k:I

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Landroidx/collection/MutableIntSet;->b(I)Z

    .line 217
    .line 218
    .line 219
    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->k:I

    .line 220
    .line 221
    invoke-virtual {v5, v3, v0, v4}, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->b(Landroid/view/View;IZ)V

    .line 222
    .line 223
    .line 224
    :cond_10
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 225
    .line 226
    if-eqz v0, :cond_11

    .line 227
    .line 228
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    if-eqz v0, :cond_11

    .line 233
    .line 234
    invoke-virtual {v0, p0}, Landroidx/compose/ui/spatial/RectManager;->h(Landroidx/compose/ui/node/LayoutNode;)V

    .line 235
    .line 236
    .line 237
    :cond_11
    return-void
.end method

.method public final e(III)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/AbstractApplier;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/node/LayoutNode;->P(III)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final f(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/AbstractApplier;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNode;->U(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final bridge synthetic i(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    return-void
.end method

.method public final j()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/AbstractApplier;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->u()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
