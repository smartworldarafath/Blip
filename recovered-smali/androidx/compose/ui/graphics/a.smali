.class public final synthetic Landroidx/compose/ui/graphics/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/graphics/a;->j:Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/graphics/a;->j:Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;

    .line 4
    .line 5
    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->x:F

    .line 6
    .line 7
    check-cast p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->g(F)V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->y:F

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->h(F)V

    .line 15
    .line 16
    .line 17
    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->z:F

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->b(F)V

    .line 20
    .line 21
    .line 22
    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->A:F

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->o(F)V

    .line 25
    .line 26
    .line 27
    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->B:F

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->p(F)V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->C:F

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j(F)V

    .line 35
    .line 36
    .line 37
    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->D:F

    .line 38
    .line 39
    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->s:F

    .line 40
    .line 41
    cmpg-float v1, v1, v0

    .line 42
    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 47
    .line 48
    or-int/lit16 v1, v1, 0x100

    .line 49
    .line 50
    iput v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 51
    .line 52
    iput v0, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->s:F

    .line 53
    .line 54
    :goto_0
    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->E:F

    .line 55
    .line 56
    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->t:F

    .line 57
    .line 58
    cmpg-float v1, v1, v0

    .line 59
    .line 60
    if-nez v1, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 64
    .line 65
    or-int/lit16 v1, v1, 0x200

    .line 66
    .line 67
    iput v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 68
    .line 69
    iput v0, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->t:F

    .line 70
    .line 71
    :goto_1
    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->F:F

    .line 72
    .line 73
    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->u:F

    .line 74
    .line 75
    cmpg-float v1, v1, v0

    .line 76
    .line 77
    if-nez v1, :cond_2

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 81
    .line 82
    or-int/lit16 v1, v1, 0x400

    .line 83
    .line 84
    iput v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 85
    .line 86
    iput v0, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->u:F

    .line 87
    .line 88
    :goto_2
    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->G:F

    .line 89
    .line 90
    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->v:F

    .line 91
    .line 92
    cmpg-float v1, v1, v0

    .line 93
    .line 94
    if-nez v1, :cond_3

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_3
    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 98
    .line 99
    or-int/lit16 v1, v1, 0x800

    .line 100
    .line 101
    iput v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 102
    .line 103
    iput v0, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->v:F

    .line 104
    .line 105
    :goto_3
    iget-wide v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->H:J

    .line 106
    .line 107
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->n(J)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->I:Landroidx/compose/ui/graphics/Shape;

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->l(Landroidx/compose/ui/graphics/Shape;)V

    .line 113
    .line 114
    .line 115
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->J:Z

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->d(Z)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->K:Landroidx/compose/ui/graphics/RenderEffect;

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->e(Landroidx/compose/ui/graphics/RenderEffect;)V

    .line 123
    .line 124
    .line 125
    iget-wide v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->L:J

    .line 126
    .line 127
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->c(J)V

    .line 128
    .line 129
    .line 130
    iget-wide v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->M:J

    .line 131
    .line 132
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->m(J)V

    .line 133
    .line 134
    .line 135
    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->N:I

    .line 136
    .line 137
    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->z:I

    .line 138
    .line 139
    if-ne v1, v0, :cond_4

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_4
    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 143
    .line 144
    const v2, 0x8000

    .line 145
    .line 146
    .line 147
    or-int/2addr v1, v2

    .line 148
    iput v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 149
    .line 150
    iput v0, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->z:I

    .line 151
    .line 152
    :goto_4
    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->O:I

    .line 153
    .line 154
    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->G:I

    .line 155
    .line 156
    if-ne v1, v0, :cond_5

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_5
    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 160
    .line 161
    const/high16 v2, 0x80000

    .line 162
    .line 163
    or-int/2addr v1, v2

    .line 164
    iput v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 165
    .line 166
    iput v0, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->G:I

    .line 167
    .line 168
    :goto_5
    iget-object v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->P:Landroidx/compose/ui/graphics/ColorFilter;

    .line 169
    .line 170
    iget-object v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->F:Landroidx/compose/ui/graphics/ColorFilter;

    .line 171
    .line 172
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-nez v1, :cond_6

    .line 177
    .line 178
    iget v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 179
    .line 180
    const/high16 v2, 0x40000

    .line 181
    .line 182
    or-int/2addr v1, v2

    .line 183
    iput v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 184
    .line 185
    iput-object v0, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->F:Landroidx/compose/ui/graphics/ColorFilter;

    .line 186
    .line 187
    :cond_6
    iget-object p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->Q:Landroidx/compose/ui/graphics/LayerOutsets;

    .line 188
    .line 189
    iget-object v0, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->B:Landroidx/compose/ui/graphics/LayerOutsets;

    .line 190
    .line 191
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-nez v0, :cond_7

    .line 196
    .line 197
    iget v0, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 198
    .line 199
    const/high16 v1, 0x100000

    .line 200
    .line 201
    or-int/2addr v0, v1

    .line 202
    iput v0, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 203
    .line 204
    iput-object p0, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->B:Landroidx/compose/ui/graphics/LayerOutsets;

    .line 205
    .line 206
    :cond_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 207
    .line 208
    return-object p0
.end method
