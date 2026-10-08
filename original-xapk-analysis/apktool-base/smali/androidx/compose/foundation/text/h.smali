.class public final synthetic Landroidx/compose/foundation/text/h;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/graphics/SolidColor;

.field public final synthetic k:Landroidx/compose/foundation/text/LegacyTextFieldState;

.field public final synthetic l:Landroidx/compose/ui/text/input/TextFieldValue;

.field public final synthetic m:Landroidx/compose/ui/text/input/OffsetMapping;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/SolidColor;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/h;->j:Landroidx/compose/ui/graphics/SolidColor;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/text/h;->k:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/text/h;->l:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/text/h;->m:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    const p3, -0x5097aed    # -6.4000205E35f

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 16
    .line 17
    .line 18
    sget-object p3, Landroidx/compose/ui/platform/CompositionLocalsKt;->y:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 19
    .line 20
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    check-cast p3, Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 39
    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    if-ne v1, v2, :cond_1

    .line 43
    .line 44
    :cond_0
    new-instance v1, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

    .line 45
    .line 46
    invoke-direct {v1, p3}, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;-><init>(Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    move-object v4, v1

    .line 53
    check-cast v4, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

    .line 54
    .line 55
    iget-object v8, p0, Landroidx/compose/foundation/text/h;->j:Landroidx/compose/ui/graphics/SolidColor;

    .line 56
    .line 57
    iget-wide v0, v8, Landroidx/compose/ui/graphics/SolidColor;->a:J

    .line 58
    .line 59
    const-wide/16 v5, 0x10

    .line 60
    .line 61
    cmp-long p3, v0, v5

    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    if-nez p3, :cond_2

    .line 65
    .line 66
    move p3, v0

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    const/4 p3, 0x1

    .line 69
    :goto_0
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->u:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 70
    .line 71
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroidx/compose/ui/platform/WindowInfo;

    .line 76
    .line 77
    check-cast v1, Landroidx/compose/ui/platform/LazyWindowInfo;

    .line 78
    .line 79
    invoke-virtual {v1}, Landroidx/compose/ui/platform/LazyWindowInfo;->a()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_7

    .line 84
    .line 85
    iget-object v7, p0, Landroidx/compose/foundation/text/h;->k:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 86
    .line 87
    invoke-virtual {v7}, Landroidx/compose/foundation/text/LegacyTextFieldState;->b()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_7

    .line 92
    .line 93
    iget-object v6, p0, Landroidx/compose/foundation/text/h;->l:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 94
    .line 95
    iget-wide v9, v6, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 96
    .line 97
    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_7

    .line 102
    .line 103
    if-eqz p3, :cond_7

    .line 104
    .line 105
    const p3, -0x2a2b68da

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 109
    .line 110
    .line 111
    iget-object p3, v6, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 112
    .line 113
    iget-wide v9, v6, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 114
    .line 115
    new-instance v1, Landroidx/compose/ui/text/TextRange;

    .line 116
    .line 117
    invoke-direct {v1, v9, v10}, Landroidx/compose/ui/text/TextRange;-><init>(J)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    if-nez v3, :cond_3

    .line 129
    .line 130
    if-ne v5, v2, :cond_4

    .line 131
    .line 132
    :cond_3
    new-instance v5, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1$1$1;

    .line 133
    .line 134
    const/4 v3, 0x0

    .line 135
    invoke-direct {v5, v4, v3}, Landroidx/compose/foundation/text/TextFieldCursorKt$cursor$1$1$1;-><init>(Landroidx/compose/foundation/text/input/internal/CursorAnimationState;Lkotlin/coroutines/Continuation;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    :cond_4
    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 142
    .line 143
    invoke-static {p3, v1, v5, p2}, Landroidx/compose/runtime/EffectsKt;->f(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p3

    .line 150
    iget-object v5, p0, Landroidx/compose/foundation/text/h;->m:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 151
    .line 152
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    or-int/2addr p0, p3

    .line 157
    invoke-virtual {p2, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result p3

    .line 161
    or-int/2addr p0, p3

    .line 162
    invoke-virtual {p2, v7}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result p3

    .line 166
    or-int/2addr p0, p3

    .line 167
    invoke-virtual {p2, v8}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result p3

    .line 171
    or-int/2addr p0, p3

    .line 172
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p3

    .line 176
    if-nez p0, :cond_5

    .line 177
    .line 178
    if-ne p3, v2, :cond_6

    .line 179
    .line 180
    :cond_5
    new-instance v3, Lo;

    .line 181
    .line 182
    const/4 v9, 0x4

    .line 183
    invoke-direct/range {v3 .. v9}, Lo;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    move-object p3, v3

    .line 190
    :cond_6
    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 191
    .line 192
    invoke-static {p1, p3}, Landroidx/compose/ui/draw/DrawModifierKt;->d(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 197
    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_7
    const p0, -0x2a0caad9

    .line 201
    .line 202
    .line 203
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 207
    .line 208
    .line 209
    sget-object p0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 210
    .line 211
    :goto_1
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 212
    .line 213
    .line 214
    return-object p0
.end method
