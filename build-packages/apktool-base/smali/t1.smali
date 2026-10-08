.class public final synthetic Lt1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/ui/window/PopupLayout;

.field public final synthetic l:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/window/PopupLayout;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    .line 1
    iput p3, p0, Lt1;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lt1;->k:Landroidx/compose/ui/window/PopupLayout;

    .line 4
    .line 5
    iput-object p2, p0, Lt1;->l:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lt1;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    iget-object v3, p0, Lt1;->l:Landroidx/compose/runtime/MutableState;

    .line 7
    .line 8
    iget-object p0, p0, Lt1;->k:Landroidx/compose/ui/window/PopupLayout;

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 13
    .line 14
    check-cast p2, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    sget-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 24
    .line 25
    and-int/lit8 v0, p2, 0x3

    .line 26
    .line 27
    if-eq v0, v2, :cond_0

    .line 28
    .line 29
    move v0, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v0, v5

    .line 32
    :goto_0
    and-int/2addr p2, v4

    .line 33
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 34
    .line 35
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_7

    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 46
    .line 47
    if-ne p2, v0, :cond_1

    .line 48
    .line 49
    new-instance p2, Lh;

    .line 50
    .line 51
    const/16 v2, 0x9

    .line 52
    .line 53
    invoke-direct {p2, v2}, Lh;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 60
    .line 61
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 62
    .line 63
    invoke-static {v2, v5, p2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->a(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    if-nez v2, :cond_2

    .line 76
    .line 77
    if-ne v6, v0, :cond_3

    .line 78
    .line 79
    :cond_2
    new-instance v6, Ls1;

    .line 80
    .line 81
    invoke-direct {v6, p0, v5}, Ls1;-><init>(Landroidx/compose/ui/window/PopupLayout;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 88
    .line 89
    invoke-static {p2, v6}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p0}, Landroidx/compose/ui/window/PopupLayout;->getCanCalculatePosition()Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-eqz p0, :cond_4

    .line 98
    .line 99
    const/high16 p0, 0x3f800000    # 1.0f

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    const/4 p0, 0x0

    .line 103
    :goto_1
    invoke-static {p2, p0}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    check-cast p2, Lkotlin/jvm/functions/Function2;

    .line 112
    .line 113
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    if-ne v2, v0, :cond_5

    .line 118
    .line 119
    sget-object v2, Landroidx/compose/ui/window/AndroidPopup_androidKt$SimpleStack$1$1;->a:Landroidx/compose/ui/window/AndroidPopup_androidKt$SimpleStack$1$1;

    .line 120
    .line 121
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :cond_5
    check-cast v2, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 125
    .line 126
    iget-wide v6, p1, Landroidx/compose/runtime/GapComposer;->T:J

    .line 127
    .line 128
    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-static {p1, p0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 141
    .line 142
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 146
    .line 147
    .line 148
    iget-boolean v6, p1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 149
    .line 150
    if-eqz v6, :cond_6

    .line 151
    .line 152
    sget-object v6, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 153
    .line 154
    invoke-virtual {p1, v6}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_6
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 159
    .line 160
    .line 161
    :goto_2
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 162
    .line 163
    invoke-static {p1, v2, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 164
    .line 165
    .line 166
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 167
    .line 168
    invoke-static {p1, v3, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 176
    .line 177
    invoke-static {p1, v0, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 178
    .line 179
    .line 180
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 181
    .line 182
    .line 183
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 184
    .line 185
    invoke-static {p1, p0, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 186
    .line 187
    .line 188
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-interface {p2, p1, p0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_7
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 200
    .line 201
    .line 202
    :goto_3
    return-object v1

    .line 203
    :pswitch_0
    sget-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 204
    .line 205
    and-int/lit8 v0, p2, 0x3

    .line 206
    .line 207
    if-eq v0, v2, :cond_8

    .line 208
    .line 209
    move v5, v4

    .line 210
    :cond_8
    and-int/2addr p2, v4

    .line 211
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 212
    .line 213
    invoke-virtual {p1, p2, v5}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 214
    .line 215
    .line 216
    move-result p2

    .line 217
    if-eqz p2, :cond_9

    .line 218
    .line 219
    sget-object p2, Landroidx/compose/ui/window/AndroidPopup_androidKt;->b:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 220
    .line 221
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 222
    .line 223
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    new-instance v0, Lt1;

    .line 228
    .line 229
    invoke-direct {v0, p0, v3, v4}, Lt1;-><init>(Landroidx/compose/ui/window/PopupLayout;Landroidx/compose/runtime/MutableState;I)V

    .line 230
    .line 231
    .line 232
    const p0, 0x3ceea85c

    .line 233
    .line 234
    .line 235
    invoke-static {p0, v0, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    const/16 v0, 0x38

    .line 240
    .line 241
    invoke-static {p2, p0, p1, v0}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 242
    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_9
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 246
    .line 247
    .line 248
    :goto_4
    return-object v1

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
