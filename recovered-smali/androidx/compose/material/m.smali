.class public final synthetic Landroidx/compose/material/m;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:F

.field public final synthetic k:Landroidx/compose/material/TextFieldColors;

.field public final synthetic l:Z

.field public final synthetic m:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(FLandroidx/compose/material/TextFieldColors;ZLkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/material/m;->j:F

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material/m;->k:Landroidx/compose/material/TextFieldColors;

    .line 7
    .line 8
    iput-boolean p3, p0, Landroidx/compose/material/m;->l:Z

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/material/m;->m:Lkotlin/jvm/functions/Function2;

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
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    and-int/lit8 v0, p3, 0x6

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    move-object v0, p2

    .line 16
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x2

    .line 27
    :goto_0
    or-int/2addr p3, v0

    .line 28
    :cond_1
    and-int/lit8 v0, p3, 0x13

    .line 29
    .line 30
    const/16 v1, 0x12

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    const/4 v3, 0x0

    .line 34
    if-eq v0, v1, :cond_2

    .line 35
    .line 36
    move v0, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move v0, v3

    .line 39
    :goto_1
    and-int/2addr p3, v2

    .line 40
    move-object v8, p2

    .line 41
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 42
    .line 43
    invoke-virtual {v8, p3, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_7

    .line 48
    .line 49
    iget p2, p0, Landroidx/compose/material/m;->j:F

    .line 50
    .line 51
    invoke-static {p1, p2}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    sget-object p2, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 56
    .line 57
    invoke-static {p2, v3}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-static {v8}, Landroidx/compose/runtime/ComposablesKt;->a(Landroidx/compose/runtime/Composer;)I

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v8, p1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 79
    .line 80
    .line 81
    iget-boolean v1, v8, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 82
    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    sget-object v1, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 86
    .line 87
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_3
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 92
    .line 93
    .line 94
    :goto_2
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 95
    .line 96
    invoke-static {v8, p2, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 97
    .line 98
    .line 99
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 100
    .line 101
    invoke-static {v8, v0, p2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 102
    .line 103
    .line 104
    iget-boolean p2, v8, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 105
    .line 106
    if-nez p2, :cond_4

    .line 107
    .line 108
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    if-nez p2, :cond_5

    .line 121
    .line 122
    :cond_4
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 123
    .line 124
    invoke-static {p3, v8, p3, p2}, Lq;->r(ILandroidx/compose/runtime/GapComposer;ILe6;)V

    .line 125
    .line 126
    .line 127
    :cond_5
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 128
    .line 129
    invoke-static {v8, p1, p2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Landroidx/compose/material/m;->k:Landroidx/compose/material/TextFieldColors;

    .line 133
    .line 134
    check-cast p1, Landroidx/compose/material/DefaultTextFieldColors;

    .line 135
    .line 136
    const p2, 0xfc885ec

    .line 137
    .line 138
    .line 139
    invoke-virtual {v8, p2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 140
    .line 141
    .line 142
    iget-boolean p2, p0, Landroidx/compose/material/m;->l:Z

    .line 143
    .line 144
    if-eqz p2, :cond_6

    .line 145
    .line 146
    iget-wide p1, p1, Landroidx/compose/material/DefaultTextFieldColors;->t:J

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_6
    iget-wide p1, p1, Landroidx/compose/material/DefaultTextFieldColors;->u:J

    .line 150
    .line 151
    :goto_3
    new-instance p3, Landroidx/compose/ui/graphics/Color;

    .line 152
    .line 153
    invoke-direct {p3, p1, p2}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 154
    .line 155
    .line 156
    invoke-static {p3, v8}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 161
    .line 162
    .line 163
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, Landroidx/compose/ui/graphics/Color;

    .line 168
    .line 169
    iget-wide v4, p1, Landroidx/compose/ui/graphics/Color;->a:J

    .line 170
    .line 171
    invoke-static {v8}, Landroidx/compose/material/MaterialTheme;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Typography;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    iget-object v6, p1, Landroidx/compose/material/Typography;->g:Landroidx/compose/ui/text/TextStyle;

    .line 176
    .line 177
    const/4 v9, 0x0

    .line 178
    const/4 v10, 0x4

    .line 179
    iget-object v7, p0, Landroidx/compose/material/m;->m:Lkotlin/jvm/functions/Function2;

    .line 180
    .line 181
    invoke-static/range {v4 .. v10}, Landroidx/compose/material/TextFieldImplKt;->b(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_7
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 189
    .line 190
    .line 191
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 192
    .line 193
    return-object p0
.end method
