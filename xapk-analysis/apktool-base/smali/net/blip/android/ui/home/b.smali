.class public final synthetic Lnet/blip/android/ui/home/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:Landroidx/compose/runtime/State;

.field public final synthetic k:Lnet/blip/libblip/PeerPickerViewModel;

.field public final synthetic l:Landroidx/navigation/NavController;

.field public final synthetic m:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/navigation/NavController;Lnet/blip/libblip/PeerPickerViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lnet/blip/android/ui/home/b;->j:Landroidx/compose/runtime/State;

    .line 5
    .line 6
    iput-object p4, p0, Lnet/blip/android/ui/home/b;->k:Lnet/blip/libblip/PeerPickerViewModel;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/blip/android/ui/home/b;->l:Landroidx/navigation/NavController;

    .line 9
    .line 10
    iput-object p1, p0, Lnet/blip/android/ui/home/b;->m:Landroidx/compose/runtime/MutableState;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/animation/AnimatedVisibilityScope;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 10
    .line 11
    move-object/from16 v3, p3

    .line 12
    .line 13
    check-cast v3, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    and-int/lit8 v1, v3, 0x11

    .line 23
    .line 24
    const/16 v4, 0x10

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x1

    .line 28
    if-eq v1, v4, :cond_0

    .line 29
    .line 30
    move v1, v6

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v1, v5

    .line 33
    :goto_0
    and-int/2addr v3, v6

    .line 34
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 35
    .line 36
    invoke-virtual {v2, v3, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    if-eqz v1, :cond_5

    .line 43
    .line 44
    sget-object v1, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 45
    .line 46
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 51
    .line 52
    iget-wide v7, v1, Lnet/blip/android/ui/androidtheme/AndroidColors;->i:J

    .line 53
    .line 54
    sget-object v1, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 55
    .line 56
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 57
    .line 58
    invoke-static {v4, v7, v8, v1}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const/high16 v7, 0x3f800000    # 1.0f

    .line 63
    .line 64
    invoke-static {v1, v7}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 73
    .line 74
    if-ne v7, v8, :cond_1

    .line 75
    .line 76
    sget-object v7, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$7$1$1;->a:Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$7$1$1;

    .line 77
    .line 78
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    .line 82
    .line 83
    invoke-static {v1, v3, v7}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 88
    .line 89
    invoke-static {v7, v5}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    iget-wide v9, v2, Landroidx/compose/runtime/GapComposer;->T:J

    .line 94
    .line 95
    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    invoke-static {v2, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 108
    .line 109
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 113
    .line 114
    .line 115
    iget-boolean v10, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 116
    .line 117
    if-eqz v10, :cond_2

    .line 118
    .line 119
    sget-object v10, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 120
    .line 121
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_2
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 126
    .line 127
    .line 128
    :goto_1
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 129
    .line 130
    invoke-static {v2, v5, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 131
    .line 132
    .line 133
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 134
    .line 135
    invoke-static {v2, v9, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 136
    .line 137
    .line 138
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 143
    .line 144
    invoke-static {v2, v5, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 145
    .line 146
    .line 147
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 148
    .line 149
    .line 150
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 151
    .line 152
    invoke-static {v2, v1, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 153
    .line 154
    .line 155
    invoke-static {v4}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->a(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    new-instance v9, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 160
    .line 161
    const/high16 v1, 0x41000000    # 8.0f

    .line 162
    .line 163
    invoke-direct {v9, v1, v1, v1, v1}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 164
    .line 165
    .line 166
    iget-object v1, v0, Lnet/blip/android/ui/home/b;->j:Landroidx/compose/runtime/State;

    .line 167
    .line 168
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    iget-object v5, v0, Lnet/blip/android/ui/home/b;->k:Lnet/blip/libblip/PeerPickerViewModel;

    .line 173
    .line 174
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v10

    .line 178
    or-int/2addr v4, v10

    .line 179
    iget-object v10, v0, Lnet/blip/android/ui/home/b;->l:Landroidx/navigation/NavController;

    .line 180
    .line 181
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v11

    .line 185
    or-int/2addr v4, v11

    .line 186
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v11

    .line 190
    if-nez v4, :cond_3

    .line 191
    .line 192
    if-ne v11, v8, :cond_4

    .line 193
    .line 194
    :cond_3
    new-instance v11, Lnet/blip/android/ui/home/d;

    .line 195
    .line 196
    iget-object v0, v0, Lnet/blip/android/ui/home/b;->m:Landroidx/compose/runtime/MutableState;

    .line 197
    .line 198
    invoke-direct {v11, v0, v1, v10, v5}, Lnet/blip/android/ui/home/d;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/navigation/NavController;Lnet/blip/libblip/PeerPickerViewModel;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    :cond_4
    move-object v15, v11

    .line 205
    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 206
    .line 207
    const/16 v17, 0x180

    .line 208
    .line 209
    const/4 v8, 0x0

    .line 210
    const/4 v10, 0x0

    .line 211
    const/4 v11, 0x0

    .line 212
    const/4 v12, 0x0

    .line 213
    const/4 v13, 0x0

    .line 214
    const/4 v14, 0x0

    .line 215
    move-object/from16 v16, v2

    .line 216
    .line 217
    invoke-static/range {v7 .. v17}, Lnet/blip/shared/SelectionListKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLnet/blip/shared/SelectionListState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 221
    .line 222
    .line 223
    return-object v3

    .line 224
    :cond_5
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 225
    .line 226
    .line 227
    return-object v3
.end method
