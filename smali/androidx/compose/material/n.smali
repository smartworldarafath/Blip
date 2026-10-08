.class public final synthetic Landroidx/compose/material/n;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic k:I

.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:I

.field public final synthetic o:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic p:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic q:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic r:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic s:Landroidx/compose/material/TextFieldMeasurePolicy;

.field public final synthetic t:I

.field public final synthetic u:I

.field public final synthetic v:Landroidx/compose/ui/layout/MeasureScope;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/Placeable;IIIILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/material/TextFieldMeasurePolicy;IILandroidx/compose/ui/layout/MeasureScope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material/n;->j:Landroidx/compose/ui/layout/Placeable;

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/material/n;->k:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/compose/material/n;->l:I

    .line 9
    .line 10
    iput p4, p0, Landroidx/compose/material/n;->m:I

    .line 11
    .line 12
    iput p5, p0, Landroidx/compose/material/n;->n:I

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/material/n;->o:Landroidx/compose/ui/layout/Placeable;

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/material/n;->p:Landroidx/compose/ui/layout/Placeable;

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/compose/material/n;->q:Landroidx/compose/ui/layout/Placeable;

    .line 19
    .line 20
    iput-object p9, p0, Landroidx/compose/material/n;->r:Landroidx/compose/ui/layout/Placeable;

    .line 21
    .line 22
    iput-object p10, p0, Landroidx/compose/material/n;->s:Landroidx/compose/material/TextFieldMeasurePolicy;

    .line 23
    .line 24
    iput p11, p0, Landroidx/compose/material/n;->t:I

    .line 25
    .line 26
    iput p12, p0, Landroidx/compose/material/n;->u:I

    .line 27
    .line 28
    iput-object p13, p0, Landroidx/compose/material/n;->v:Landroidx/compose/ui/layout/MeasureScope;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/compose/material/n;->s:Landroidx/compose/material/TextFieldMeasurePolicy;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/compose/material/TextFieldMeasurePolicy;->a:Z

    .line 4
    .line 5
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/compose/material/n;->j:Landroidx/compose/ui/layout/Placeable;

    .line 8
    .line 9
    iget v3, p0, Landroidx/compose/material/n;->m:I

    .line 10
    .line 11
    iget v4, p0, Landroidx/compose/material/n;->n:I

    .line 12
    .line 13
    iget-object v5, p0, Landroidx/compose/material/n;->o:Landroidx/compose/ui/layout/Placeable;

    .line 14
    .line 15
    iget-object v6, p0, Landroidx/compose/material/n;->p:Landroidx/compose/ui/layout/Placeable;

    .line 16
    .line 17
    iget-object v7, p0, Landroidx/compose/material/n;->q:Landroidx/compose/ui/layout/Placeable;

    .line 18
    .line 19
    iget-object v8, p0, Landroidx/compose/material/n;->r:Landroidx/compose/ui/layout/Placeable;

    .line 20
    .line 21
    iget-object v9, p0, Landroidx/compose/material/n;->v:Landroidx/compose/ui/layout/MeasureScope;

    .line 22
    .line 23
    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 24
    .line 25
    const/4 v11, 0x0

    .line 26
    if-eqz v2, :cond_7

    .line 27
    .line 28
    iget v12, p0, Landroidx/compose/material/n;->k:I

    .line 29
    .line 30
    iget v13, p0, Landroidx/compose/material/n;->l:I

    .line 31
    .line 32
    sub-int/2addr v12, v13

    .line 33
    if-gez v12, :cond_0

    .line 34
    .line 35
    move v12, v11

    .line 36
    :cond_0
    iget v13, p0, Landroidx/compose/material/n;->t:I

    .line 37
    .line 38
    iget p0, p0, Landroidx/compose/material/n;->u:I

    .line 39
    .line 40
    add-int/2addr v13, p0

    .line 41
    iget p0, v0, Landroidx/compose/material/TextFieldMeasurePolicy;->b:F

    .line 42
    .line 43
    invoke-interface {v9}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v7, :cond_1

    .line 48
    .line 49
    iget v9, v7, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 50
    .line 51
    invoke-virtual {v10, v9, v4}, Landroidx/compose/ui/BiasAlignment$Vertical;->a(II)I

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    invoke-static {p1, v7, v11, v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 56
    .line 57
    .line 58
    :cond_1
    if-eqz v8, :cond_2

    .line 59
    .line 60
    iget v9, v8, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 61
    .line 62
    sub-int/2addr v3, v9

    .line 63
    iget v9, v8, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 64
    .line 65
    invoke-virtual {v10, v9, v4}, Landroidx/compose/ui/BiasAlignment$Vertical;->a(II)I

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    invoke-static {p1, v8, v3, v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 70
    .line 71
    .line 72
    :cond_2
    if-eqz v1, :cond_3

    .line 73
    .line 74
    iget v0, v2, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 75
    .line 76
    invoke-virtual {v10, v0, v4}, Landroidx/compose/ui/BiasAlignment$Vertical;->a(II)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    goto :goto_0

    .line 81
    :cond_3
    const/high16 v1, 0x41800000    # 16.0f

    .line 82
    .line 83
    mul-float/2addr v1, v0

    .line 84
    invoke-static {v1}, Lkotlin/math/MathKt;->b(F)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    :goto_0
    sub-int v1, v0, v12

    .line 89
    .line 90
    int-to-float v1, v1

    .line 91
    mul-float/2addr v1, p0

    .line 92
    invoke-static {v1}, Lkotlin/math/MathKt;->b(F)I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    sub-int/2addr v0, p0

    .line 97
    if-eqz v7, :cond_4

    .line 98
    .line 99
    iget p0, v7, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    move p0, v11

    .line 103
    :goto_1
    invoke-static {p1, v2, p0, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 104
    .line 105
    .line 106
    if-eqz v7, :cond_5

    .line 107
    .line 108
    iget p0, v7, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_5
    move p0, v11

    .line 112
    :goto_2
    invoke-static {p1, v5, p0, v13}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 113
    .line 114
    .line 115
    if-eqz v6, :cond_e

    .line 116
    .line 117
    if-eqz v7, :cond_6

    .line 118
    .line 119
    iget v11, v7, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 120
    .line 121
    :cond_6
    invoke-static {p1, v6, v11, v13}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 122
    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_7
    invoke-interface {v9}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    iget-object v0, v0, Landroidx/compose/material/TextFieldMeasurePolicy;->c:Landroidx/compose/foundation/layout/PaddingValues;

    .line 130
    .line 131
    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    mul-float/2addr v0, p0

    .line 136
    invoke-static {v0}, Lkotlin/math/MathKt;->b(F)I

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    if-eqz v7, :cond_8

    .line 141
    .line 142
    iget v0, v7, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 143
    .line 144
    invoke-virtual {v10, v0, v4}, Landroidx/compose/ui/BiasAlignment$Vertical;->a(II)I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    invoke-static {p1, v7, v11, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 149
    .line 150
    .line 151
    :cond_8
    if-eqz v8, :cond_9

    .line 152
    .line 153
    iget v0, v8, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 154
    .line 155
    sub-int/2addr v3, v0

    .line 156
    iget v0, v8, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 157
    .line 158
    invoke-virtual {v10, v0, v4}, Landroidx/compose/ui/BiasAlignment$Vertical;->a(II)I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    invoke-static {p1, v8, v3, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 163
    .line 164
    .line 165
    :cond_9
    if-eqz v1, :cond_a

    .line 166
    .line 167
    iget v0, v5, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 168
    .line 169
    invoke-virtual {v10, v0, v4}, Landroidx/compose/ui/BiasAlignment$Vertical;->a(II)I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    goto :goto_3

    .line 174
    :cond_a
    move v0, p0

    .line 175
    :goto_3
    if-eqz v7, :cond_b

    .line 176
    .line 177
    iget v2, v7, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_b
    move v2, v11

    .line 181
    :goto_4
    invoke-static {p1, v5, v2, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 182
    .line 183
    .line 184
    if-eqz v6, :cond_e

    .line 185
    .line 186
    if-eqz v1, :cond_c

    .line 187
    .line 188
    iget p0, v6, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 189
    .line 190
    invoke-virtual {v10, p0, v4}, Landroidx/compose/ui/BiasAlignment$Vertical;->a(II)I

    .line 191
    .line 192
    .line 193
    move-result p0

    .line 194
    :cond_c
    if-eqz v7, :cond_d

    .line 195
    .line 196
    iget v11, v7, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 197
    .line 198
    :cond_d
    invoke-static {p1, v6, v11, p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 199
    .line 200
    .line 201
    :cond_e
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 202
    .line 203
    return-object p0
.end method
