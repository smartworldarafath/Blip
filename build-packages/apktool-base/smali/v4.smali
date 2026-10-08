.class public final synthetic Lv4;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic l:Lkotlin/jvm/functions/Function3;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;I)V
    .locals 0

    .line 1
    iput p3, p0, Lv4;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lv4;->k:Landroidx/compose/foundation/layout/PaddingValues;

    .line 4
    .line 5
    iput-object p2, p0, Lv4;->l:Lkotlin/jvm/functions/Function3;

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
    .locals 6

    .line 1
    iget v0, p0, Lv4;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object v4, p0, Lv4;->l:Lkotlin/jvm/functions/Function3;

    .line 8
    .line 9
    iget-object p0, p0, Lv4;->k:Landroidx/compose/foundation/layout/PaddingValues;

    .line 10
    .line 11
    const/4 v5, 0x1

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
    and-int/lit8 v0, p2, 0x3

    .line 24
    .line 25
    if-eq v0, v2, :cond_0

    .line 26
    .line 27
    move v3, v5

    .line 28
    :cond_0
    and-int/2addr p2, v5

    .line 29
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 30
    .line 31
    invoke-virtual {p1, p2, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_4

    .line 36
    .line 37
    sget p2, Landroidx/compose/material/ButtonDefaults;->b:F

    .line 38
    .line 39
    sget v0, Landroidx/compose/material/ButtonDefaults;->c:F

    .line 40
    .line 41
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 42
    .line 43
    invoke-static {v2, p2, v0}, Landroidx/compose/foundation/layout/SizeKt;->a(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-static {p2, p0}, Landroidx/compose/foundation/layout/PaddingKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    sget-object p2, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 52
    .line 53
    const/16 v0, 0x36

    .line 54
    .line 55
    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    .line 56
    .line 57
    invoke-static {v2, p2, p1, v0}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-static {p1}, Landroidx/compose/runtime/ComposablesKt;->a(Landroidx/compose/runtime/Composer;)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {p1, p0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 79
    .line 80
    .line 81
    iget-boolean v3, p1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 82
    .line 83
    if-eqz v3, :cond_1

    .line 84
    .line 85
    sget-object v3, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 86
    .line 87
    invoke-virtual {p1, v3}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 92
    .line 93
    .line 94
    :goto_0
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 95
    .line 96
    invoke-static {p1, p2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 97
    .line 98
    .line 99
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 100
    .line 101
    invoke-static {p1, v2, p2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 102
    .line 103
    .line 104
    iget-boolean p2, p1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 105
    .line 106
    if-nez p2, :cond_2

    .line 107
    .line 108
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    if-nez p2, :cond_3

    .line 121
    .line 122
    :cond_2
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 123
    .line 124
    invoke-static {v0, p1, v0, p2}, Lq;->r(ILandroidx/compose/runtime/GapComposer;ILe6;)V

    .line 125
    .line 126
    .line 127
    :cond_3
    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 128
    .line 129
    invoke-static {p1, p0, p2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 130
    .line 131
    .line 132
    const/4 p0, 0x6

    .line 133
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    sget-object p2, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 138
    .line 139
    invoke-interface {v4, p2, p1, p0}, Lkotlin/jvm/functions/Function3;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 147
    .line 148
    .line 149
    :goto_1
    return-object v1

    .line 150
    :pswitch_0
    and-int/lit8 v0, p2, 0x3

    .line 151
    .line 152
    if-eq v0, v2, :cond_5

    .line 153
    .line 154
    move v3, v5

    .line 155
    :cond_5
    and-int/2addr p2, v5

    .line 156
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 157
    .line 158
    invoke-virtual {p1, p2, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    if-eqz p2, :cond_6

    .line 163
    .line 164
    invoke-static {p1}, Landroidx/compose/material/MaterialTheme;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Typography;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    iget-object p2, p2, Landroidx/compose/material/Typography;->k:Landroidx/compose/ui/text/TextStyle;

    .line 169
    .line 170
    new-instance v0, Lv4;

    .line 171
    .line 172
    invoke-direct {v0, p0, v4, v5}, Lv4;-><init>(Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;I)V

    .line 173
    .line 174
    .line 175
    const p0, 0x9ddf013

    .line 176
    .line 177
    .line 178
    invoke-static {p0, v0, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    const/16 v0, 0x30

    .line 183
    .line 184
    invoke-static {p2, p0, p1, v0}, Landroidx/compose/material/TextKt;->a(Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_6
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 189
    .line 190
    .line 191
    :goto_2
    return-object v1

    .line 192
    nop

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
