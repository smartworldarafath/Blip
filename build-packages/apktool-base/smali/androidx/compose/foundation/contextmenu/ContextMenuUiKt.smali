.class public abstract Landroidx/compose/foundation/contextmenu/ContextMenuUiKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/foundation/contextmenu/ContextMenuColors;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Landroidx/compose/ui/window/PopupProperties;

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/compose/ui/window/PopupProperties;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    .line 9
    .line 10
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->d:J

    .line 11
    .line 12
    sget-wide v5, Landroidx/compose/ui/graphics/Color;->b:J

    .line 13
    .line 14
    const v0, 0x3ec28f5c    # 0.38f

    .line 15
    .line 16
    .line 17
    invoke-static {v5, v6, v0}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 18
    .line 19
    .line 20
    move-result-wide v9

    .line 21
    invoke-static {v5, v6, v0}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 22
    .line 23
    .line 24
    move-result-wide v11

    .line 25
    move-wide v7, v5

    .line 26
    invoke-direct/range {v2 .. v12}, Landroidx/compose/foundation/contextmenu/ContextMenuColors;-><init>(JJJJJ)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Landroidx/compose/foundation/contextmenu/ContextMenuUiKt;->a:Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    .line 30
    .line 31
    return-void
.end method

.method public static final a(Landroidx/compose/foundation/contextmenu/ContextMenuColors;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    .line 1
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x1f76910f

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p4, 0x6

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x2

    .line 22
    :goto_0
    or-int/2addr v0, p4

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, p4

    .line 25
    :goto_1
    and-int/lit8 v1, p4, 0x30

    .line 26
    .line 27
    if-nez v1, :cond_3

    .line 28
    .line 29
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    const/16 v1, 0x20

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    const/16 v1, 0x10

    .line 39
    .line 40
    :goto_2
    or-int/2addr v0, v1

    .line 41
    :cond_3
    and-int/lit16 v1, p4, 0x180

    .line 42
    .line 43
    if-nez v1, :cond_5

    .line 44
    .line 45
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_4

    .line 50
    .line 51
    const/16 v1, 0x100

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_4
    const/16 v1, 0x80

    .line 55
    .line 56
    :goto_3
    or-int/2addr v0, v1

    .line 57
    :cond_5
    and-int/lit16 v1, v0, 0x93

    .line 58
    .line 59
    const/16 v2, 0x92

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    const/4 v4, 0x1

    .line 63
    if-eq v1, v2, :cond_6

    .line 64
    .line 65
    move v1, v4

    .line 66
    goto :goto_4

    .line 67
    :cond_6
    move v1, v3

    .line 68
    :goto_4
    and-int/lit8 v2, v0, 0x1

    .line 69
    .line 70
    invoke-virtual {p3, v2, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_8

    .line 75
    .line 76
    sget-object v1, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->a:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 77
    .line 78
    const/high16 v1, 0x40800000    # 4.0f

    .line 79
    .line 80
    invoke-static {v1}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->b(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    const-wide/16 v8, 0x0

    .line 85
    .line 86
    const/16 v10, 0x1c

    .line 87
    .line 88
    const/high16 v6, 0x40400000    # 3.0f

    .line 89
    .line 90
    move-object v5, p1

    .line 91
    invoke-static/range {v5 .. v10}, Landroidx/compose/ui/draw/ShadowKt;->a(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;JI)Landroidx/compose/ui/Modifier;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iget-wide v1, p0, Landroidx/compose/foundation/contextmenu/ContextMenuColors;->a:J

    .line 96
    .line 97
    sget-object v6, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 98
    .line 99
    invoke-static {p1, v1, v2, v6}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    sget-object v1, Landroidx/compose/foundation/layout/IntrinsicSize;->j:Landroidx/compose/foundation/layout/IntrinsicSize;

    .line 104
    .line 105
    invoke-static {p1}, Landroidx/compose/foundation/layout/IntrinsicKt;->a(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const/4 v1, 0x0

    .line 110
    sget v2, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->d:F

    .line 111
    .line 112
    invoke-static {p1, v1, v2, v4}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {p3}, Landroidx/compose/foundation/ScrollKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {p1, v1}, Landroidx/compose/foundation/ScrollKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;)Landroidx/compose/ui/Modifier;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    shl-int/lit8 v0, v0, 0x3

    .line 125
    .line 126
    and-int/lit16 v0, v0, 0x1c00

    .line 127
    .line 128
    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->b:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    .line 129
    .line 130
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->m:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 131
    .line 132
    invoke-static {v1, v2, p3, v3}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    iget-wide v2, p3, Landroidx/compose/runtime/GapComposer;->T:J

    .line 137
    .line 138
    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-static {p3, p1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 151
    .line 152
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 156
    .line 157
    .line 158
    iget-boolean v6, p3, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 159
    .line 160
    if-eqz v6, :cond_7

    .line 161
    .line 162
    sget-object v6, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 163
    .line 164
    invoke-virtual {p3, v6}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 165
    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_7
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 169
    .line 170
    .line 171
    :goto_5
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 172
    .line 173
    invoke-static {p3, v1, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 174
    .line 175
    .line 176
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 177
    .line 178
    invoke-static {p3, v3, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 179
    .line 180
    .line 181
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 186
    .line 187
    invoke-static {p3, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 188
    .line 189
    .line 190
    invoke-static {p3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 191
    .line 192
    .line 193
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 194
    .line 195
    invoke-static {p3, p1, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 196
    .line 197
    .line 198
    shr-int/lit8 p1, v0, 0x6

    .line 199
    .line 200
    and-int/lit8 p1, p1, 0x70

    .line 201
    .line 202
    or-int/lit8 p1, p1, 0x6

    .line 203
    .line 204
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 209
    .line 210
    invoke-virtual {p2, v0, p3, p1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p3, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 214
    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_8
    move-object v5, p1

    .line 218
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 219
    .line 220
    .line 221
    :goto_6
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    if-eqz p1, :cond_9

    .line 226
    .line 227
    move-object v7, v5

    .line 228
    new-instance v5, Lb1;

    .line 229
    .line 230
    const/16 v10, 0x9

    .line 231
    .line 232
    move-object v6, p0

    .line 233
    move-object v8, p2

    .line 234
    move v9, p4

    .line 235
    invoke-direct/range {v5 .. v10}, Lb1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 236
    .line 237
    .line 238
    iput-object v5, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 239
    .line 240
    :cond_9
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/contextmenu/ContextMenuColors;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 8

    .line 1
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x2548d191

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p5, 0x1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    or-int/lit8 v1, p4, 0x6

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x2

    .line 25
    :goto_0
    or-int/2addr v1, p4

    .line 26
    :goto_1
    and-int/lit8 v2, p5, 0x2

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    or-int/lit8 v1, v1, 0x30

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_2
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_3

    .line 38
    .line 39
    const/16 v3, 0x20

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    const/16 v3, 0x10

    .line 43
    .line 44
    :goto_2
    or-int/2addr v1, v3

    .line 45
    :goto_3
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_4

    .line 50
    .line 51
    const/16 v3, 0x100

    .line 52
    .line 53
    goto :goto_4

    .line 54
    :cond_4
    const/16 v3, 0x80

    .line 55
    .line 56
    :goto_4
    or-int/2addr v1, v3

    .line 57
    and-int/lit16 v3, v1, 0x93

    .line 58
    .line 59
    const/16 v4, 0x92

    .line 60
    .line 61
    if-eq v3, v4, :cond_5

    .line 62
    .line 63
    const/4 v3, 0x1

    .line 64
    goto :goto_5

    .line 65
    :cond_5
    const/4 v3, 0x0

    .line 66
    :goto_5
    and-int/lit8 v4, v1, 0x1

    .line 67
    .line 68
    invoke-virtual {p3, v4, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_8

    .line 73
    .line 74
    if-eqz v0, :cond_6

    .line 75
    .line 76
    sget-object p0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 77
    .line 78
    :cond_6
    if-eqz v2, :cond_7

    .line 79
    .line 80
    sget-object p1, Landroidx/compose/foundation/contextmenu/ContextMenuUiKt;->a:Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    .line 81
    .line 82
    :cond_7
    new-instance v0, Li0;

    .line 83
    .line 84
    const/4 v2, 0x3

    .line 85
    invoke-direct {v0, v2, p2, p1}, Li0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    const v3, -0xeebf658

    .line 89
    .line 90
    .line 91
    invoke-static {v3, v0, p3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    shr-int/lit8 v3, v1, 0x3

    .line 96
    .line 97
    and-int/lit8 v3, v3, 0xe

    .line 98
    .line 99
    or-int/lit16 v3, v3, 0x180

    .line 100
    .line 101
    shl-int/2addr v1, v2

    .line 102
    and-int/lit8 v1, v1, 0x70

    .line 103
    .line 104
    or-int/2addr v1, v3

    .line 105
    invoke-static {p1, p0, v0, p3, v1}, Landroidx/compose/foundation/contextmenu/ContextMenuUiKt;->a(Landroidx/compose/foundation/contextmenu/ContextMenuColors;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 106
    .line 107
    .line 108
    :goto_6
    move-object v3, p0

    .line 109
    move-object v4, p1

    .line 110
    goto :goto_7

    .line 111
    :cond_8
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 112
    .line 113
    .line 114
    goto :goto_6

    .line 115
    :goto_7
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    if-eqz p0, :cond_9

    .line 120
    .line 121
    new-instance v2, Lb1;

    .line 122
    .line 123
    move-object v5, p2

    .line 124
    move v6, p4

    .line 125
    move v7, p5

    .line 126
    invoke-direct/range {v2 .. v7}, Lb1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/contextmenu/ContextMenuColors;Lkotlin/jvm/functions/Function1;II)V

    .line 127
    .line 128
    .line 129
    iput-object v2, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 130
    .line 131
    :cond_9
    return-void
.end method

.method public static final c(Ljava/lang/String;ZLandroidx/compose/foundation/contextmenu/ContextMenuColors;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 28

    .line 1
    move/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v6, p2

    .line 4
    .line 5
    move-object/from16 v7, p4

    .line 6
    .line 7
    move-object/from16 v8, p5

    .line 8
    .line 9
    move/from16 v9, p7

    .line 10
    .line 11
    move-object/from16 v10, p6

    .line 12
    .line 13
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    const v0, -0x774762b3

    .line 16
    .line 17
    .line 18
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v0, v9, 0x6

    .line 22
    .line 23
    move-object/from16 v2, p0

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x2

    .line 36
    :goto_0
    or-int/2addr v0, v9

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v0, v9

    .line 39
    :goto_1
    and-int/lit8 v3, v9, 0x30

    .line 40
    .line 41
    const/16 v4, 0x20

    .line 42
    .line 43
    if-nez v3, :cond_3

    .line 44
    .line 45
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    move v3, v4

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/16 v3, 0x10

    .line 54
    .line 55
    :goto_2
    or-int/2addr v0, v3

    .line 56
    :cond_3
    and-int/lit16 v3, v9, 0x180

    .line 57
    .line 58
    if-nez v3, :cond_5

    .line 59
    .line 60
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_4

    .line 65
    .line 66
    const/16 v3, 0x100

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    const/16 v3, 0x80

    .line 70
    .line 71
    :goto_3
    or-int/2addr v0, v3

    .line 72
    :cond_5
    and-int/lit16 v3, v9, 0xc00

    .line 73
    .line 74
    if-nez v3, :cond_7

    .line 75
    .line 76
    move-object/from16 v3, p3

    .line 77
    .line 78
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_6

    .line 83
    .line 84
    const/16 v5, 0x800

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_6
    const/16 v5, 0x400

    .line 88
    .line 89
    :goto_4
    or-int/2addr v0, v5

    .line 90
    goto :goto_5

    .line 91
    :cond_7
    move-object/from16 v3, p3

    .line 92
    .line 93
    :goto_5
    and-int/lit16 v5, v9, 0x6000

    .line 94
    .line 95
    if-nez v5, :cond_9

    .line 96
    .line 97
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_8

    .line 102
    .line 103
    const/16 v5, 0x4000

    .line 104
    .line 105
    goto :goto_6

    .line 106
    :cond_8
    const/16 v5, 0x2000

    .line 107
    .line 108
    :goto_6
    or-int/2addr v0, v5

    .line 109
    :cond_9
    const/high16 v5, 0x30000

    .line 110
    .line 111
    and-int/2addr v5, v9

    .line 112
    const/high16 v12, 0x20000

    .line 113
    .line 114
    if-nez v5, :cond_b

    .line 115
    .line 116
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_a

    .line 121
    .line 122
    move v5, v12

    .line 123
    goto :goto_7

    .line 124
    :cond_a
    const/high16 v5, 0x10000

    .line 125
    .line 126
    :goto_7
    or-int/2addr v0, v5

    .line 127
    :cond_b
    move v13, v0

    .line 128
    const v0, 0x12493

    .line 129
    .line 130
    .line 131
    and-int/2addr v0, v13

    .line 132
    const v5, 0x12492

    .line 133
    .line 134
    .line 135
    const/4 v14, 0x0

    .line 136
    if-eq v0, v5, :cond_c

    .line 137
    .line 138
    const/4 v0, 0x1

    .line 139
    goto :goto_8

    .line 140
    :cond_c
    move v0, v14

    .line 141
    :goto_8
    and-int/lit8 v5, v13, 0x1

    .line 142
    .line 143
    invoke-virtual {v10, v5, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_16

    .line 148
    .line 149
    sget-object v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->a:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 150
    .line 151
    sget v5, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->c:F

    .line 152
    .line 153
    invoke-static {v5}, Landroidx/compose/foundation/layout/Arrangement;->e(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 154
    .line 155
    .line 156
    move-result-object v15

    .line 157
    and-int/lit8 v11, v13, 0x70

    .line 158
    .line 159
    if-ne v11, v4, :cond_d

    .line 160
    .line 161
    const/4 v4, 0x1

    .line 162
    goto :goto_9

    .line 163
    :cond_d
    move v4, v14

    .line 164
    :goto_9
    const/high16 v11, 0x70000

    .line 165
    .line 166
    and-int/2addr v11, v13

    .line 167
    if-ne v11, v12, :cond_e

    .line 168
    .line 169
    const/4 v11, 0x1

    .line 170
    goto :goto_a

    .line 171
    :cond_e
    move v11, v14

    .line 172
    :goto_a
    or-int/2addr v4, v11

    .line 173
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v11

    .line 177
    if-nez v4, :cond_f

    .line 178
    .line 179
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 180
    .line 181
    if-ne v11, v4, :cond_10

    .line 182
    .line 183
    :cond_f
    new-instance v11, Lq6;

    .line 184
    .line 185
    invoke-direct {v11, v14, v8, v1}, Lq6;-><init>(ILjava/lang/Object;Z)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    :cond_10
    move-object v4, v11

    .line 192
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 193
    .line 194
    move v11, v5

    .line 195
    const/16 v5, 0xc

    .line 196
    .line 197
    const/4 v3, 0x0

    .line 198
    move v12, v11

    .line 199
    move-object v11, v0

    .line 200
    move-object/from16 v0, p3

    .line 201
    .line 202
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/ClickableKt;->b(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    const/high16 v0, 0x3f800000    # 1.0f

    .line 207
    .line 208
    invoke-static {v3, v0}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    const/high16 v1, 0x42e00000    # 112.0f

    .line 213
    .line 214
    const/high16 v2, 0x438c0000    # 280.0f

    .line 215
    .line 216
    const/high16 v3, 0x42400000    # 48.0f

    .line 217
    .line 218
    invoke-static {v0, v1, v3, v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->m(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    const/4 v1, 0x0

    .line 223
    const/4 v2, 0x2

    .line 224
    invoke-static {v0, v12, v1, v2}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    const/16 v1, 0x36

    .line 229
    .line 230
    invoke-static {v15, v11, v10, v1}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    iget-wide v2, v10, Landroidx/compose/runtime/GapComposer;->T:J

    .line 235
    .line 236
    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    invoke-static {v10, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 249
    .line 250
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 254
    .line 255
    .line 256
    iget-boolean v4, v10, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 257
    .line 258
    sget-object v5, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 259
    .line 260
    if-eqz v4, :cond_11

    .line 261
    .line 262
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 263
    .line 264
    .line 265
    goto :goto_b

    .line 266
    :cond_11
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 267
    .line 268
    .line 269
    :goto_b
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 270
    .line 271
    invoke-static {v10, v1, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 272
    .line 273
    .line 274
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 275
    .line 276
    invoke-static {v10, v3, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 277
    .line 278
    .line 279
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 284
    .line 285
    invoke-static {v10, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 286
    .line 287
    .line 288
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 289
    .line 290
    .line 291
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 292
    .line 293
    invoke-static {v10, v0, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 294
    .line 295
    .line 296
    if-nez v7, :cond_12

    .line 297
    .line 298
    const v0, -0x5f3ebcd6

    .line 299
    .line 300
    .line 301
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 305
    .line 306
    .line 307
    const/4 v0, 0x1

    .line 308
    goto :goto_e

    .line 309
    :cond_12
    const v0, -0x5f3ebcd5

    .line 310
    .line 311
    .line 312
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 313
    .line 314
    .line 315
    sget v16, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->e:F

    .line 316
    .line 317
    const/16 v17, 0x0

    .line 318
    .line 319
    const/16 v20, 0x2

    .line 320
    .line 321
    sget-object v15, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 322
    .line 323
    move/from16 v18, v16

    .line 324
    .line 325
    move/from16 v19, v16

    .line 326
    .line 327
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/SizeKt;->i(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 332
    .line 333
    invoke-static {v11, v14}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 334
    .line 335
    .line 336
    move-result-object v11

    .line 337
    move v12, v14

    .line 338
    iget-wide v14, v10, Landroidx/compose/runtime/GapComposer;->T:J

    .line 339
    .line 340
    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    .line 341
    .line 342
    .line 343
    move-result v14

    .line 344
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 345
    .line 346
    .line 347
    move-result-object v15

    .line 348
    invoke-static {v10, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 353
    .line 354
    .line 355
    move/from16 v16, v12

    .line 356
    .line 357
    iget-boolean v12, v10, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 358
    .line 359
    if-eqz v12, :cond_13

    .line 360
    .line 361
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 362
    .line 363
    .line 364
    goto :goto_c

    .line 365
    :cond_13
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 366
    .line 367
    .line 368
    :goto_c
    invoke-static {v10, v11, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 369
    .line 370
    .line 371
    invoke-static {v10, v15, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 372
    .line 373
    .line 374
    invoke-static {v14, v10, v3, v10}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 375
    .line 376
    .line 377
    invoke-static {v10, v0, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 378
    .line 379
    .line 380
    if-eqz p1, :cond_14

    .line 381
    .line 382
    iget-wide v0, v6, Landroidx/compose/foundation/contextmenu/ContextMenuColors;->c:J

    .line 383
    .line 384
    goto :goto_d

    .line 385
    :cond_14
    iget-wide v0, v6, Landroidx/compose/foundation/contextmenu/ContextMenuColors;->e:J

    .line 386
    .line 387
    :goto_d
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    .line 388
    .line 389
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 390
    .line 391
    .line 392
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    invoke-interface {v7, v2, v10, v0}, Lkotlin/jvm/functions/Function3;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    const/4 v0, 0x1

    .line 400
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 401
    .line 402
    .line 403
    move/from16 v12, v16

    .line 404
    .line 405
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 406
    .line 407
    .line 408
    :goto_e
    if-eqz p1, :cond_15

    .line 409
    .line 410
    iget-wide v1, v6, Landroidx/compose/foundation/contextmenu/ContextMenuColors;->b:J

    .line 411
    .line 412
    :goto_f
    move-wide v15, v1

    .line 413
    goto :goto_10

    .line 414
    :cond_15
    iget-wide v1, v6, Landroidx/compose/foundation/contextmenu/ContextMenuColors;->d:J

    .line 415
    .line 416
    goto :goto_f

    .line 417
    :goto_10
    sget v23, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->b:I

    .line 418
    .line 419
    sget-wide v17, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->h:J

    .line 420
    .line 421
    sget-object v19, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->i:Landroidx/compose/ui/text/font/FontWeight;

    .line 422
    .line 423
    sget-wide v24, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->j:J

    .line 424
    .line 425
    sget-wide v21, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->k:J

    .line 426
    .line 427
    new-instance v12, Landroidx/compose/ui/text/TextStyle;

    .line 428
    .line 429
    const/16 v26, 0x0

    .line 430
    .line 431
    const v27, 0xfd7f78

    .line 432
    .line 433
    .line 434
    const/16 v20, 0x0

    .line 435
    .line 436
    move-object v14, v12

    .line 437
    invoke-direct/range {v14 .. v27}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJII)V

    .line 438
    .line 439
    .line 440
    sget-object v1, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 441
    .line 442
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/RowScopeInstance;->a()Landroidx/compose/ui/Modifier;

    .line 443
    .line 444
    .line 445
    move-result-object v11

    .line 446
    and-int/lit8 v1, v13, 0xe

    .line 447
    .line 448
    const/high16 v2, 0x180000

    .line 449
    .line 450
    or-int v19, v1, v2

    .line 451
    .line 452
    const/16 v20, 0x3b8

    .line 453
    .line 454
    const/4 v13, 0x0

    .line 455
    const/4 v14, 0x0

    .line 456
    const/4 v15, 0x1

    .line 457
    const/16 v16, 0x0

    .line 458
    .line 459
    const/16 v17, 0x0

    .line 460
    .line 461
    move-object/from16 v18, v10

    .line 462
    .line 463
    move-object/from16 v10, p0

    .line 464
    .line 465
    invoke-static/range {v10 .. v20}, Landroidx/compose/foundation/text/BasicTextKt;->b(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 466
    .line 467
    .line 468
    move-object/from16 v1, v18

    .line 469
    .line 470
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 471
    .line 472
    .line 473
    goto :goto_11

    .line 474
    :cond_16
    move-object v1, v10

    .line 475
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 476
    .line 477
    .line 478
    :goto_11
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 479
    .line 480
    .line 481
    move-result-object v10

    .line 482
    if-eqz v10, :cond_17

    .line 483
    .line 484
    new-instance v0, Lr6;

    .line 485
    .line 486
    move-object/from16 v1, p0

    .line 487
    .line 488
    move/from16 v2, p1

    .line 489
    .line 490
    move-object/from16 v4, p3

    .line 491
    .line 492
    move-object v3, v6

    .line 493
    move-object v5, v7

    .line 494
    move-object v6, v8

    .line 495
    move v7, v9

    .line 496
    invoke-direct/range {v0 .. v7}, Lr6;-><init>(Ljava/lang/String;ZLandroidx/compose/foundation/contextmenu/ContextMenuColors;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;I)V

    .line 497
    .line 498
    .line 499
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 500
    .line 501
    :cond_17
    return-void
.end method
