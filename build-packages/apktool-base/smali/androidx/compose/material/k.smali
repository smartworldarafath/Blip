.class public final synthetic Landroidx/compose/material/k;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/Modifier;

.field public final synthetic k:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic l:J

.field public final synthetic m:F

.field public final synthetic n:F

.field public final synthetic o:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material/k;->j:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material/k;->k:Landroidx/compose/ui/graphics/Shape;

    .line 7
    .line 8
    iput-wide p3, p0, Landroidx/compose/material/k;->l:J

    .line 9
    .line 10
    iput p5, p0, Landroidx/compose/material/k;->m:F

    .line 11
    .line 12
    iput p6, p0, Landroidx/compose/material/k;->n:F

    .line 13
    .line 14
    iput-object p7, p0, Landroidx/compose/material/k;->o:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    and-int/lit8 v0, p2, 0x3

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    move v0, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v2

    .line 19
    :goto_0
    and-int/2addr p2, v3

    .line 20
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    if-eqz p2, :cond_6

    .line 29
    .line 30
    sget-object p2, Landroidx/compose/material/ElevationOverlayKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Landroidx/compose/material/ElevationOverlay;

    .line 37
    .line 38
    iget-wide v4, p0, Landroidx/compose/material/k;->l:J

    .line 39
    .line 40
    iget v1, p0, Landroidx/compose/material/k;->m:F

    .line 41
    .line 42
    invoke-static {v4, v5, p2, v1, p1}, Landroidx/compose/material/SurfaceKt;->d(JLandroidx/compose/material/ElevationOverlay;FLandroidx/compose/runtime/GapComposer;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    iget-object p2, p0, Landroidx/compose/material/k;->j:Landroidx/compose/ui/Modifier;

    .line 47
    .line 48
    iget-object v1, p0, Landroidx/compose/material/k;->k:Landroidx/compose/ui/graphics/Shape;

    .line 49
    .line 50
    iget v6, p0, Landroidx/compose/material/k;->n:F

    .line 51
    .line 52
    invoke-static {p2, v1, v4, v5, v6}, Landroidx/compose/material/SurfaceKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JF)Landroidx/compose/ui/Modifier;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 61
    .line 62
    if-ne v1, v4, :cond_1

    .line 63
    .line 64
    new-instance v1, Lle;

    .line 65
    .line 66
    const/16 v5, 0x19

    .line 67
    .line 68
    invoke-direct {v1, v5}, Lle;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 75
    .line 76
    invoke-static {p2, v2, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->a(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-ne v1, v4, :cond_2

    .line 85
    .line 86
    sget-object v1, Landroidx/compose/material/SurfaceKt$Surface$1$2$1;->a:Landroidx/compose/material/SurfaceKt$Surface$1$2$1;

    .line 87
    .line 88
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    .line 92
    .line 93
    invoke-static {p2, v0, v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 98
    .line 99
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {p1}, Landroidx/compose/runtime/ComposablesKt;->a(Landroidx/compose/runtime/Composer;)I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-static {p1, p2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 116
    .line 117
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 121
    .line 122
    .line 123
    iget-boolean v6, p1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 124
    .line 125
    if-eqz v6, :cond_3

    .line 126
    .line 127
    sget-object v6, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 128
    .line 129
    invoke-virtual {p1, v6}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 134
    .line 135
    .line 136
    :goto_1
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 137
    .line 138
    invoke-static {p1, v1, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 139
    .line 140
    .line 141
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 142
    .line 143
    invoke-static {p1, v5, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 144
    .line 145
    .line 146
    iget-boolean v1, p1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 147
    .line 148
    if-nez v1, :cond_4

    .line 149
    .line 150
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-nez v1, :cond_5

    .line 163
    .line 164
    :cond_4
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 165
    .line 166
    invoke-static {v4, p1, v4, v1}, Lq;->r(ILandroidx/compose/runtime/GapComposer;ILe6;)V

    .line 167
    .line 168
    .line 169
    :cond_5
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 170
    .line 171
    invoke-static {p1, p2, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 172
    .line 173
    .line 174
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    iget-object p0, p0, Landroidx/compose/material/k;->o:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 179
    .line 180
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v3}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 184
    .line 185
    .line 186
    return-object v0

    .line 187
    :cond_6
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 188
    .line 189
    .line 190
    return-object v0
.end method
