.class public final synthetic Ls6;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field public final synthetic k:Landroidx/compose/foundation/text/LegacyTextFieldState;

.field public final synthetic l:Z

.field public final synthetic m:Landroidx/compose/ui/platform/WindowInfo;

.field public final synthetic n:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic o:Lkotlin/jvm/functions/Function1;

.field public final synthetic p:Landroidx/compose/ui/text/input/TextFieldValue;

.field public final synthetic q:Landroidx/compose/ui/text/input/OffsetMapping;

.field public final synthetic r:Landroidx/compose/ui/unit/Density;

.field public final synthetic s:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

.field public final synthetic t:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/foundation/text/LegacyTextFieldState;ZLandroidx/compose/ui/platform/WindowInfo;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/unit/Density;Landroidx/compose/foundation/relocation/BringIntoViewRequester;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls6;->j:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 5
    .line 6
    iput-object p2, p0, Ls6;->k:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 7
    .line 8
    iput-boolean p3, p0, Ls6;->l:Z

    .line 9
    .line 10
    iput-object p4, p0, Ls6;->m:Landroidx/compose/ui/platform/WindowInfo;

    .line 11
    .line 12
    iput-object p5, p0, Ls6;->n:Lkotlinx/coroutines/CoroutineScope;

    .line 13
    .line 14
    iput-object p6, p0, Ls6;->o:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    iput-object p7, p0, Ls6;->p:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 17
    .line 18
    iput-object p8, p0, Ls6;->q:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 19
    .line 20
    iput-object p9, p0, Ls6;->r:Landroidx/compose/ui/unit/Density;

    .line 21
    .line 22
    iput-object p10, p0, Ls6;->s:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 23
    .line 24
    iput p11, p0, Ls6;->t:I

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    and-int/lit8 v3, v2, 0x3

    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    const/4 v5, 0x1

    .line 19
    const/4 v6, 0x0

    .line 20
    if-eq v3, v4, :cond_0

    .line 21
    .line 22
    move v3, v5

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v3, v6

    .line 25
    :goto_0
    and-int/2addr v2, v5

    .line 26
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_4

    .line 33
    .line 34
    new-instance v7, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2;

    .line 35
    .line 36
    iget-object v8, v0, Ls6;->k:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 37
    .line 38
    iget-object v9, v0, Ls6;->j:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 39
    .line 40
    iget-object v10, v0, Ls6;->m:Landroidx/compose/ui/platform/WindowInfo;

    .line 41
    .line 42
    iget-object v11, v0, Ls6;->n:Lkotlinx/coroutines/CoroutineScope;

    .line 43
    .line 44
    iget-object v12, v0, Ls6;->o:Lkotlin/jvm/functions/Function1;

    .line 45
    .line 46
    iget-object v13, v0, Ls6;->p:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 47
    .line 48
    iget-object v14, v0, Ls6;->q:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 49
    .line 50
    iget-object v15, v0, Ls6;->r:Landroidx/compose/ui/unit/Density;

    .line 51
    .line 52
    iget-object v2, v0, Ls6;->s:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 53
    .line 54
    iget v3, v0, Ls6;->t:I

    .line 55
    .line 56
    move-object/from16 v16, v2

    .line 57
    .line 58
    move/from16 v17, v3

    .line 59
    .line 60
    invoke-direct/range {v7 .. v17}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$8$1$1$2;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/platform/WindowInfo;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/unit/Density;Landroidx/compose/foundation/relocation/BringIntoViewRequester;I)V

    .line 61
    .line 62
    .line 63
    iget-wide v2, v1, Landroidx/compose/runtime/GapComposer;->T:J

    .line 64
    .line 65
    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 74
    .line 75
    invoke-static {v1, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 80
    .line 81
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 85
    .line 86
    .line 87
    iget-boolean v10, v1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 88
    .line 89
    if-eqz v10, :cond_1

    .line 90
    .line 91
    sget-object v10, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 92
    .line 93
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 98
    .line 99
    .line 100
    :goto_1
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 101
    .line 102
    invoke-static {v1, v7, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 103
    .line 104
    .line 105
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 106
    .line 107
    invoke-static {v1, v3, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 115
    .line 116
    invoke-static {v1, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 117
    .line 118
    .line 119
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 120
    .line 121
    .line 122
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 123
    .line 124
    invoke-static {v1, v4, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v8}, Landroidx/compose/foundation/text/LegacyTextFieldState;->a()Landroidx/compose/foundation/text/HandleState;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    sget-object v3, Landroidx/compose/foundation/text/HandleState;->j:Landroidx/compose/foundation/text/HandleState;

    .line 135
    .line 136
    iget-boolean v0, v0, Ls6;->l:Z

    .line 137
    .line 138
    if-eq v2, v3, :cond_2

    .line 139
    .line 140
    invoke-virtual {v8}, Landroidx/compose/foundation/text/LegacyTextFieldState;->c()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    if-eqz v2, :cond_2

    .line 145
    .line 146
    invoke-virtual {v8}, Landroidx/compose/foundation/text/LegacyTextFieldState;->c()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->o()Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-eqz v2, :cond_2

    .line 158
    .line 159
    if-eqz v0, :cond_2

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_2
    move v5, v6

    .line 163
    :goto_2
    invoke-static {v9, v5, v1, v6}, Landroidx/compose/foundation/text/CoreTextFieldKt;->c(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZLandroidx/compose/runtime/Composer;I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v8}, Landroidx/compose/foundation/text/LegacyTextFieldState;->a()Landroidx/compose/foundation/text/HandleState;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    sget-object v3, Landroidx/compose/foundation/text/HandleState;->l:Landroidx/compose/foundation/text/HandleState;

    .line 171
    .line 172
    if-ne v2, v3, :cond_3

    .line 173
    .line 174
    if-eqz v0, :cond_3

    .line 175
    .line 176
    const v0, -0x2a874e76

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 180
    .line 181
    .line 182
    invoke-static {v9, v1, v6}, Landroidx/compose/foundation/text/CoreTextFieldKt;->d(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_3
    const v0, -0x2a862226

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_4
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 200
    .line 201
    .line 202
    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 203
    .line 204
    return-object v0
.end method
