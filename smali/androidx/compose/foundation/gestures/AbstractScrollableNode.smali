.class public abstract Landroidx/compose/foundation/gestures/AbstractScrollableNode;
.super Landroidx/compose/foundation/gestures/DragGestureNode;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/node/SemanticsModifierNode;


# instance fields
.field public final S:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

.field public T:Landroidx/compose/foundation/gestures/a;

.field public U:Lkotlin/jvm/functions/Function2;

.field public V:Z

.field public W:Z

.field public X:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

.field public Y:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;


# direct methods
.method public constructor <init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/gestures/AbstractScrollableNodeKt;->a:Lh;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/compose/foundation/gestures/DragGestureNode;-><init>(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 7
    .line 8
    invoke-direct {p1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/compose/foundation/gestures/AbstractScrollableNode;->S:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final E0(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->B:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/foundation/gestures/AbstractScrollableNode;->T:Landroidx/compose/foundation/gestures/a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/foundation/gestures/AbstractScrollableNode;->U:Lkotlin/jvm/functions/Function2;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/a;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Landroidx/compose/foundation/gestures/a;-><init>(Landroidx/compose/foundation/gestures/AbstractScrollableNode;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroidx/compose/foundation/gestures/AbstractScrollableNode;->T:Landroidx/compose/foundation/gestures/a;

    .line 20
    .line 21
    new-instance v0, Landroidx/compose/foundation/gestures/AbstractScrollableNode$setScrollSemanticsActions$2;

    .line 22
    .line 23
    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/gestures/AbstractScrollableNode$setScrollSemanticsActions$2;-><init>(Landroidx/compose/foundation/gestures/AbstractScrollableNode;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Landroidx/compose/foundation/gestures/AbstractScrollableNode;->U:Lkotlin/jvm/functions/Function2;

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/AbstractScrollableNode;->T:Landroidx/compose/foundation/gestures/a;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 33
    .line 34
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->d:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 35
    .line 36
    new-instance v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 37
    .line 38
    invoke-direct {v3, v1, v0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-object p0, p0, Landroidx/compose/foundation/gestures/AbstractScrollableNode;->U:Lkotlin/jvm/functions/Function2;

    .line 45
    .line 46
    if-eqz p0, :cond_3

    .line 47
    .line 48
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 49
    .line 50
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->e:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 51
    .line 52
    invoke-interface {p1, v0, p0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    return-void
.end method

.method public final K(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/4 v6, 0x0

    .line 14
    :goto_0
    if-ge v6, v4, :cond_1

    .line 15
    .line 16
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v7

    .line 20
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 21
    .line 22
    iget-object v8, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->A:Lkotlin/jvm/functions/Function1;

    .line 23
    .line 24
    iget v7, v7, Landroidx/compose/ui/input/pointer/PointerInputChange;->i:I

    .line 25
    .line 26
    new-instance v9, Landroidx/compose/ui/input/pointer/PointerType;

    .line 27
    .line 28
    invoke-direct {v9, v7}, Landroidx/compose/ui/input/pointer/PointerType;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v8, v9}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    check-cast v7, Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_0

    .line 42
    .line 43
    invoke-super/range {p0 .. p4}, Landroidx/compose/foundation/gestures/DragGestureNode;->K(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    :goto_1
    iget-boolean v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->B:Z

    .line 51
    .line 52
    if-eqz v3, :cond_12

    .line 53
    .line 54
    iget-object v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->J:Landroidx/compose/ui/node/DelegatableNode;

    .line 55
    .line 56
    if-nez v3, :cond_2

    .line 57
    .line 58
    invoke-static {v0}, Landroidx/compose/foundation/GestureNodeKt;->a(Landroidx/compose/foundation/GestureConnection;)Landroidx/compose/ui/node/DelegatableNode;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v0, v3}, Landroidx/compose/ui/node/DelegatingNode;->Y0(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 63
    .line 64
    .line 65
    iput-object v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode;->J:Landroidx/compose/ui/node/DelegatableNode;

    .line 66
    .line 67
    :cond_2
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventPass;->j:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 68
    .line 69
    const/4 v4, 0x3

    .line 70
    const/4 v6, 0x0

    .line 71
    const/4 v7, 0x6

    .line 72
    const/4 v8, 0x1

    .line 73
    if-ne v2, v3, :cond_4

    .line 74
    .line 75
    iget v9, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->f:I

    .line 76
    .line 77
    if-ne v9, v7, :cond_4

    .line 78
    .line 79
    iget-boolean v9, v0, Landroidx/compose/foundation/gestures/AbstractScrollableNode;->V:Z

    .line 80
    .line 81
    if-nez v9, :cond_3

    .line 82
    .line 83
    move-object v12, v0

    .line 84
    check-cast v12, Landroidx/compose/foundation/gestures/ScrollableNode;

    .line 85
    .line 86
    new-instance v9, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 87
    .line 88
    new-instance v10, Landroidx/compose/foundation/gestures/AndroidConfig;

    .line 89
    .line 90
    invoke-static {v12}, Landroidx/compose/ui/node/DelegatableNode_androidKt;->a(Landroidx/compose/ui/node/DelegatableNode;)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v11

    .line 94
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object v11

    .line 98
    invoke-static {v11}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    invoke-direct {v10, v11}, Landroidx/compose/foundation/gestures/AndroidConfig;-><init>(Landroid/view/ViewConfiguration;)V

    .line 103
    .line 104
    .line 105
    move-object v11, v10

    .line 106
    new-instance v10, Landroidx/compose/foundation/gestures/ScrollableNode$createMouseWheelScrollingLogic$1;

    .line 107
    .line 108
    const-string v15, "onMouseWheelScrollStopped-TH1AsA0(J)V"

    .line 109
    .line 110
    const/16 v16, 0x4

    .line 111
    .line 112
    move-object v13, v11

    .line 113
    const/4 v11, 0x2

    .line 114
    move-object v14, v13

    .line 115
    const-class v13, Landroidx/compose/foundation/gestures/ScrollableNode;

    .line 116
    .line 117
    move-object/from16 v17, v14

    .line 118
    .line 119
    const-string v14, "onMouseWheelScrollStopped"

    .line 120
    .line 121
    move-object/from16 v5, v17

    .line 122
    .line 123
    invoke-direct/range {v10 .. v16}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    .line 125
    .line 126
    invoke-static {v12}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 127
    .line 128
    .line 129
    move-result-object v11

    .line 130
    iget-object v11, v11, Landroidx/compose/ui/node/LayoutNode;->H:Landroidx/compose/ui/unit/Density;

    .line 131
    .line 132
    iget-object v12, v12, Landroidx/compose/foundation/gestures/ScrollableNode;->a0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 133
    .line 134
    invoke-direct {v9, v12, v5, v10, v11}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/AndroidConfig;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/unit/Density;)V

    .line 135
    .line 136
    .line 137
    iput-object v9, v0, Landroidx/compose/foundation/gestures/AbstractScrollableNode;->X:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 138
    .line 139
    iput-boolean v8, v0, Landroidx/compose/foundation/gestures/AbstractScrollableNode;->V:Z

    .line 140
    .line 141
    :cond_3
    iget-object v5, v0, Landroidx/compose/foundation/gestures/AbstractScrollableNode;->X:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 142
    .line 143
    if-eqz v5, :cond_4

    .line 144
    .line 145
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->M0()Lkotlinx/coroutines/CoroutineScope;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    iget-object v10, v5, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->h:Lkotlinx/coroutines/Job;

    .line 150
    .line 151
    if-nez v10, :cond_4

    .line 152
    .line 153
    new-instance v10, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$startReceivingEvents$1;

    .line 154
    .line 155
    invoke-direct {v10, v5, v6}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$startReceivingEvents$1;-><init>(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Lkotlin/coroutines/Continuation;)V

    .line 156
    .line 157
    .line 158
    invoke-static {v9, v6, v6, v10, v4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    iput-object v9, v5, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->h:Lkotlinx/coroutines/Job;

    .line 163
    .line 164
    :cond_4
    iget-object v5, v0, Landroidx/compose/foundation/gestures/AbstractScrollableNode;->X:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 165
    .line 166
    if-eqz v5, :cond_8

    .line 167
    .line 168
    iget v9, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->f:I

    .line 169
    .line 170
    if-ne v9, v7, :cond_8

    .line 171
    .line 172
    iget-object v7, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 173
    .line 174
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    const/4 v10, 0x0

    .line 179
    :goto_2
    if-ge v10, v9, :cond_6

    .line 180
    .line 181
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v11

    .line 185
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 186
    .line 187
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 188
    .line 189
    .line 190
    move-result v11

    .line 191
    if-eqz v11, :cond_5

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_6
    sget-object v7, Landroidx/compose/ui/input/pointer/PointerEventPass;->j:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 198
    .line 199
    if-ne v2, v7, :cond_7

    .line 200
    .line 201
    iget-boolean v7, v5, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->d:Z

    .line 202
    .line 203
    if-eqz v7, :cond_7

    .line 204
    .line 205
    invoke-virtual {v5, v1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->f(Landroidx/compose/ui/input/pointer/PointerEvent;)Z

    .line 206
    .line 207
    .line 208
    invoke-static {v1}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->a(Landroidx/compose/ui/input/pointer/PointerEvent;)V

    .line 209
    .line 210
    .line 211
    :cond_7
    sget-object v7, Landroidx/compose/ui/input/pointer/PointerEventPass;->k:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 212
    .line 213
    if-ne v2, v7, :cond_8

    .line 214
    .line 215
    iget-boolean v7, v5, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->d:Z

    .line 216
    .line 217
    if-nez v7, :cond_8

    .line 218
    .line 219
    invoke-virtual {v5, v1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->f(Landroidx/compose/ui/input/pointer/PointerEvent;)Z

    .line 220
    .line 221
    .line 222
    move-result v5

    .line 223
    if-eqz v5, :cond_8

    .line 224
    .line 225
    invoke-static {v1}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->a(Landroidx/compose/ui/input/pointer/PointerEvent;)V

    .line 226
    .line 227
    .line 228
    :cond_8
    :goto_3
    const/16 v5, 0xc

    .line 229
    .line 230
    const/16 v7, 0xb

    .line 231
    .line 232
    const/16 v9, 0xa

    .line 233
    .line 234
    if-ne v2, v3, :cond_c

    .line 235
    .line 236
    iget v3, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->f:I

    .line 237
    .line 238
    if-ne v3, v9, :cond_9

    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_9
    if-ne v3, v7, :cond_a

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_a
    if-ne v3, v5, :cond_c

    .line 245
    .line 246
    :goto_4
    iget-boolean v3, v0, Landroidx/compose/foundation/gestures/AbstractScrollableNode;->W:Z

    .line 247
    .line 248
    if-nez v3, :cond_b

    .line 249
    .line 250
    move-object v12, v0

    .line 251
    check-cast v12, Landroidx/compose/foundation/gestures/ScrollableNode;

    .line 252
    .line 253
    new-instance v3, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    .line 254
    .line 255
    new-instance v10, Landroidx/compose/foundation/gestures/ScrollableNode$createTrackpadScrollingLogic$1;

    .line 256
    .line 257
    const-string v15, "onTrackpadScrollStopped-TH1AsA0(J)V"

    .line 258
    .line 259
    const/16 v16, 0x4

    .line 260
    .line 261
    const/4 v11, 0x2

    .line 262
    const-class v13, Landroidx/compose/foundation/gestures/ScrollableNode;

    .line 263
    .line 264
    const-string v14, "onTrackpadScrollStopped"

    .line 265
    .line 266
    invoke-direct/range {v10 .. v16}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 267
    .line 268
    .line 269
    invoke-static {v12}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 270
    .line 271
    .line 272
    move-result-object v11

    .line 273
    iget-object v11, v11, Landroidx/compose/ui/node/LayoutNode;->H:Landroidx/compose/ui/unit/Density;

    .line 274
    .line 275
    iget-object v12, v12, Landroidx/compose/foundation/gestures/ScrollableNode;->a0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 276
    .line 277
    invoke-direct {v3, v12, v10, v11}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/unit/Density;)V

    .line 278
    .line 279
    .line 280
    iput-object v3, v0, Landroidx/compose/foundation/gestures/AbstractScrollableNode;->Y:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    .line 281
    .line 282
    iput-boolean v8, v0, Landroidx/compose/foundation/gestures/AbstractScrollableNode;->W:Z

    .line 283
    .line 284
    :cond_b
    iget-object v3, v0, Landroidx/compose/foundation/gestures/AbstractScrollableNode;->Y:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    .line 285
    .line 286
    if-eqz v3, :cond_c

    .line 287
    .line 288
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->M0()Lkotlinx/coroutines/CoroutineScope;

    .line 289
    .line 290
    .line 291
    move-result-object v8

    .line 292
    iget-object v10, v3, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->g:Lkotlinx/coroutines/Job;

    .line 293
    .line 294
    if-nez v10, :cond_c

    .line 295
    .line 296
    new-instance v10, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;

    .line 297
    .line 298
    invoke-direct {v10, v3, v6}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;-><init>(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;Lkotlin/coroutines/Continuation;)V

    .line 299
    .line 300
    .line 301
    invoke-static {v8, v6, v6, v10, v4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    iput-object v4, v3, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->g:Lkotlinx/coroutines/Job;

    .line 306
    .line 307
    :cond_c
    iget-object v0, v0, Landroidx/compose/foundation/gestures/AbstractScrollableNode;->Y:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    .line 308
    .line 309
    if-eqz v0, :cond_12

    .line 310
    .line 311
    iget v3, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->f:I

    .line 312
    .line 313
    if-ne v3, v9, :cond_d

    .line 314
    .line 315
    goto :goto_5

    .line 316
    :cond_d
    if-ne v3, v7, :cond_e

    .line 317
    .line 318
    goto :goto_5

    .line 319
    :cond_e
    if-ne v3, v5, :cond_12

    .line 320
    .line 321
    :goto_5
    iget-object v3, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 322
    .line 323
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 324
    .line 325
    .line 326
    move-result v4

    .line 327
    const/4 v5, 0x0

    .line 328
    :goto_6
    if-ge v5, v4, :cond_10

    .line 329
    .line 330
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v6

    .line 334
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 335
    .line 336
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 337
    .line 338
    .line 339
    move-result v6

    .line 340
    if-eqz v6, :cond_f

    .line 341
    .line 342
    goto :goto_7

    .line 343
    :cond_f
    add-int/lit8 v5, v5, 0x1

    .line 344
    .line 345
    goto :goto_6

    .line 346
    :cond_10
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventPass;->j:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 347
    .line 348
    if-ne v2, v3, :cond_11

    .line 349
    .line 350
    iget-boolean v3, v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->d:Z

    .line 351
    .line 352
    if-eqz v3, :cond_11

    .line 353
    .line 354
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->d(Landroidx/compose/ui/input/pointer/PointerEvent;)Z

    .line 355
    .line 356
    .line 357
    invoke-static {v1}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->a(Landroidx/compose/ui/input/pointer/PointerEvent;)V

    .line 358
    .line 359
    .line 360
    :cond_11
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventPass;->k:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 361
    .line 362
    if-ne v2, v3, :cond_12

    .line 363
    .line 364
    iget-boolean v2, v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->d:Z

    .line 365
    .line 366
    if-nez v2, :cond_12

    .line 367
    .line 368
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->d(Landroidx/compose/ui/input/pointer/PointerEvent;)Z

    .line 369
    .line 370
    .line 371
    move-result v0

    .line 372
    if-eqz v0, :cond_12

    .line 373
    .line 374
    invoke-static {v1}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->a(Landroidx/compose/ui/input/pointer/PointerEvent;)V

    .line 375
    .line 376
    .line 377
    :cond_12
    :goto_7
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
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/AbstractScrollableNode;->X:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->H:Landroidx/compose/ui/unit/Density;

    .line 10
    .line 11
    iput-object v1, v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->c:Landroidx/compose/ui/unit/Density;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/AbstractScrollableNode;->Y:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->H:Landroidx/compose/ui/unit/Density;

    .line 22
    .line 23
    iput-object v1, v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->c:Landroidx/compose/ui/unit/Density;

    .line 24
    .line 25
    :cond_1
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->H:Landroidx/compose/ui/unit/Density;

    .line 35
    .line 36
    check-cast p0, Landroidx/compose/foundation/gestures/ScrollableNode;

    .line 37
    .line 38
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->Z:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    new-instance v1, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;

    .line 44
    .line 45
    invoke-direct {v1, v0}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;-><init>(Landroidx/compose/ui/unit/Density;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Landroidx/compose/animation/core/DecayAnimationSpecKt;->b(Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;)Landroidx/compose/animation/core/DecayAnimationSpec;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;->a:Landroidx/compose/animation/core/DecayAnimationSpec;

    .line 53
    .line 54
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->L()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/foundation/gestures/AbstractScrollableNode;->X:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->H:Landroidx/compose/ui/unit/Density;

    .line 13
    .line 14
    iput-object v1, v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->c:Landroidx/compose/ui/unit/Density;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/AbstractScrollableNode;->Y:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->H:Landroidx/compose/ui/unit/Density;

    .line 25
    .line 26
    iput-object v1, v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->c:Landroidx/compose/ui/unit/Density;

    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->L()V

    .line 29
    .line 30
    .line 31
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->H:Landroidx/compose/ui/unit/Density;

    .line 41
    .line 42
    check-cast p0, Landroidx/compose/foundation/gestures/ScrollableNode;

    .line 43
    .line 44
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->Z:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    new-instance v1, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;

    .line 50
    .line 51
    invoke-direct {v1, v0}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;-><init>(Landroidx/compose/ui/unit/Density;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v1}, Landroidx/compose/animation/core/DecayAnimationSpecKt;->b(Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;)Landroidx/compose/animation/core/DecayAnimationSpec;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;->a:Landroidx/compose/animation/core/DecayAnimationSpec;

    .line 59
    .line 60
    return-void
.end method

.method public final k1(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final q1()Z
    .locals 1

    .line 1
    check-cast p0, Landroidx/compose/foundation/gestures/ScrollableNode;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->a0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->a:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/compose/foundation/gestures/ScrollableState;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->b:Landroidx/compose/foundation/OverscrollEffect;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    check-cast p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->f()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move p0, v0

    .line 26
    :goto_0
    if-eqz p0, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    return v0

    .line 30
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 31
    return p0
.end method
