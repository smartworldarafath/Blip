.class public final synthetic Landroidx/compose/material/l;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:Z

.field public final synthetic k:Landroidx/compose/foundation/interaction/InteractionSource;

.field public final synthetic l:Landroidx/compose/material/TextFieldColors;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/TextFieldColors;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Landroidx/compose/material/l;->j:Z

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/material/l;->k:Landroidx/compose/foundation/interaction/InteractionSource;

    .line 7
    .line 8
    iput-object p2, p0, Landroidx/compose/material/l;->l:Landroidx/compose/material/TextFieldColors;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

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
    move-object v3, p2

    .line 11
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const p1, 0x5361fd9d

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Landroidx/compose/material/l;->k:Landroidx/compose/foundation/interaction/InteractionSource;

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    invoke-static {p1, v3, p2}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->a(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    iget-object v0, p0, Landroidx/compose/material/l;->l:Landroidx/compose/material/TextFieldColors;

    .line 27
    .line 28
    check-cast v0, Landroidx/compose/material/DefaultTextFieldColors;

    .line 29
    .line 30
    const v1, 0x3b86960b

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v3, p2}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->a(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-boolean p0, p0, Landroidx/compose/material/l;->j:Z

    .line 41
    .line 42
    if-nez p0, :cond_0

    .line 43
    .line 44
    iget-wide v0, v0, Landroidx/compose/material/DefaultTextFieldColors;->h:J

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    iget-wide v0, v0, Landroidx/compose/material/DefaultTextFieldColors;->e:J

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-wide v0, v0, Landroidx/compose/material/DefaultTextFieldColors;->f:J

    .line 63
    .line 64
    :goto_0
    const/16 p1, 0x96

    .line 65
    .line 66
    const/4 v6, 0x6

    .line 67
    const/4 v7, 0x0

    .line 68
    if-eqz p0, :cond_2

    .line 69
    .line 70
    const v2, 0x12f620d4

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 74
    .line 75
    .line 76
    invoke-static {p1, p2, v7, v6}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const/16 v4, 0x30

    .line 81
    .line 82
    const/16 v5, 0xc

    .line 83
    .line 84
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/SingleValueAnimationKt;->a(JLandroidx/compose/animation/core/TweenSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v3, p2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    const v2, 0x12f7b29e

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 96
    .line 97
    .line 98
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    .line 99
    .line 100
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 101
    .line 102
    .line 103
    invoke-static {v2, v3}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v3, p2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 108
    .line 109
    .line 110
    :goto_1
    invoke-virtual {v3, p2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 111
    .line 112
    .line 113
    invoke-interface {p3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    check-cast p3, Ljava/lang/Boolean;

    .line 118
    .line 119
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 120
    .line 121
    .line 122
    move-result p3

    .line 123
    const/high16 v1, 0x3f800000    # 1.0f

    .line 124
    .line 125
    if-eqz p3, :cond_3

    .line 126
    .line 127
    const/high16 p3, 0x40000000    # 2.0f

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_3
    move p3, v1

    .line 131
    :goto_2
    if-eqz p0, :cond_4

    .line 132
    .line 133
    const p0, 0x512078ce

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, p0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 137
    .line 138
    .line 139
    invoke-static {p1, p2, v7, v6}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    const/16 p1, 0x30

    .line 144
    .line 145
    invoke-static {p3, p0, v3, p1}, Landroidx/compose/animation/core/AnimateAsStateKt;->a(FLandroidx/compose/animation/core/TweenSpec;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/runtime/State;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {v3, p2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_4
    const p0, 0x51220fec

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3, p0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 157
    .line 158
    .line 159
    new-instance p0, Landroidx/compose/ui/unit/Dp;

    .line 160
    .line 161
    invoke-direct {p0, v1}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 162
    .line 163
    .line 164
    invoke-static {p0, v3}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {v3, p2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 169
    .line 170
    .line 171
    :goto_3
    new-instance p1, Landroidx/compose/foundation/BorderStroke;

    .line 172
    .line 173
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    check-cast p0, Landroidx/compose/ui/unit/Dp;

    .line 178
    .line 179
    iget p0, p0, Landroidx/compose/ui/unit/Dp;->j:F

    .line 180
    .line 181
    new-instance p3, Landroidx/compose/ui/graphics/SolidColor;

    .line 182
    .line 183
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    .line 188
    .line 189
    iget-wide v0, v0, Landroidx/compose/ui/graphics/Color;->a:J

    .line 190
    .line 191
    invoke-direct {p3, v0, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 192
    .line 193
    .line 194
    invoke-direct {p1, p0, p3}, Landroidx/compose/foundation/BorderStroke;-><init>(FLandroidx/compose/ui/graphics/SolidColor;)V

    .line 195
    .line 196
    .line 197
    invoke-static {p1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    check-cast p0, Landroidx/compose/foundation/BorderStroke;

    .line 206
    .line 207
    iget p1, p0, Landroidx/compose/foundation/BorderStroke;->a:F

    .line 208
    .line 209
    new-instance p3, La8;

    .line 210
    .line 211
    const/4 v0, 0x2

    .line 212
    invoke-direct {p3, p1, p0, v0}, La8;-><init>(FLjava/lang/Object;I)V

    .line 213
    .line 214
    .line 215
    sget-object p0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 216
    .line 217
    invoke-static {p0, p3}, Landroidx/compose/ui/draw/DrawModifierKt;->d(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    invoke-virtual {v3, p2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 222
    .line 223
    .line 224
    return-object p0
.end method
