.class final Landroidx/compose/ui/graphics/GraphicsLayerElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:F

.field public final i:F

.field public final j:F

.field public final k:F

.field public final l:J

.field public final m:Landroidx/compose/ui/graphics/Shape;

.field public final n:Z

.field public final o:Landroidx/compose/ui/graphics/RenderEffect;

.field public final p:J

.field public final q:J

.field public final r:I

.field public final s:I

.field public final t:Landroidx/compose/ui/graphics/ColorFilter;

.field public final u:Landroidx/compose/ui/graphics/LayerOutsets;


# direct methods
.method public constructor <init>(FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJIILandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/ui/graphics/LayerOutsets;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->b:F

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->c:F

    .line 7
    .line 8
    iput p3, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->d:F

    .line 9
    .line 10
    iput p4, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->e:F

    .line 11
    .line 12
    iput p5, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->f:F

    .line 13
    .line 14
    iput p6, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->g:F

    .line 15
    .line 16
    iput p7, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->h:F

    .line 17
    .line 18
    iput p8, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->i:F

    .line 19
    .line 20
    iput p9, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->j:F

    .line 21
    .line 22
    iput p10, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->k:F

    .line 23
    .line 24
    iput-wide p11, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->l:J

    .line 25
    .line 26
    iput-object p13, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->m:Landroidx/compose/ui/graphics/Shape;

    .line 27
    .line 28
    iput-boolean p14, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->n:Z

    .line 29
    .line 30
    iput-object p15, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->o:Landroidx/compose/ui/graphics/RenderEffect;

    .line 31
    .line 32
    move-wide/from16 p1, p16

    .line 33
    .line 34
    iput-wide p1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->p:J

    .line 35
    .line 36
    move-wide/from16 p1, p18

    .line 37
    .line 38
    iput-wide p1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->q:J

    .line 39
    .line 40
    move/from16 p1, p20

    .line 41
    .line 42
    iput p1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->r:I

    .line 43
    .line 44
    move/from16 p1, p21

    .line 45
    .line 46
    iput p1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->s:I

    .line 47
    .line 48
    move-object/from16 p1, p22

    .line 49
    .line 50
    iput-object p1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->t:Landroidx/compose/ui/graphics/ColorFilter;

    .line 51
    .line 52
    move-object/from16 p1, p23

    .line 53
    .line 54
    iput-object p1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->u:Landroidx/compose/ui/graphics/LayerOutsets;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;

    .line 12
    .line 13
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->b:F

    .line 14
    .line 15
    iget v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->b:F

    .line 16
    .line 17
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->c:F

    .line 25
    .line 26
    iget v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->c:F

    .line 27
    .line 28
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->d:F

    .line 36
    .line 37
    iget v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->d:F

    .line 38
    .line 39
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->e:F

    .line 47
    .line 48
    iget v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->e:F

    .line 49
    .line 50
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->f:F

    .line 58
    .line 59
    iget v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->f:F

    .line 60
    .line 61
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->g:F

    .line 69
    .line 70
    iget v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->g:F

    .line 71
    .line 72
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->h:F

    .line 80
    .line 81
    iget v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->h:F

    .line 82
    .line 83
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_8

    .line 88
    .line 89
    return v2

    .line 90
    :cond_8
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->i:F

    .line 91
    .line 92
    iget v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->i:F

    .line 93
    .line 94
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_9

    .line 99
    .line 100
    return v2

    .line 101
    :cond_9
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->j:F

    .line 102
    .line 103
    iget v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->j:F

    .line 104
    .line 105
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_a

    .line 110
    .line 111
    return v2

    .line 112
    :cond_a
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->k:F

    .line 113
    .line 114
    iget v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->k:F

    .line 115
    .line 116
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_b

    .line 121
    .line 122
    return v2

    .line 123
    :cond_b
    iget-wide v3, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->l:J

    .line 124
    .line 125
    iget-wide v5, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->l:J

    .line 126
    .line 127
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/TransformOrigin;->a(JJ)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_c

    .line 132
    .line 133
    return v2

    .line 134
    :cond_c
    iget-object v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->m:Landroidx/compose/ui/graphics/Shape;

    .line 135
    .line 136
    iget-object v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->m:Landroidx/compose/ui/graphics/Shape;

    .line 137
    .line 138
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_d

    .line 143
    .line 144
    return v2

    .line 145
    :cond_d
    iget-boolean v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->n:Z

    .line 146
    .line 147
    iget-boolean v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->n:Z

    .line 148
    .line 149
    if-eq v1, v3, :cond_e

    .line 150
    .line 151
    return v2

    .line 152
    :cond_e
    iget-object v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->o:Landroidx/compose/ui/graphics/RenderEffect;

    .line 153
    .line 154
    iget-object v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->o:Landroidx/compose/ui/graphics/RenderEffect;

    .line 155
    .line 156
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-nez v1, :cond_f

    .line 161
    .line 162
    return v2

    .line 163
    :cond_f
    iget-wide v3, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->p:J

    .line 164
    .line 165
    iget-wide v5, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->p:J

    .line 166
    .line 167
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-nez v1, :cond_10

    .line 172
    .line 173
    return v2

    .line 174
    :cond_10
    iget-wide v3, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->q:J

    .line 175
    .line 176
    iget-wide v5, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->q:J

    .line 177
    .line 178
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-nez v1, :cond_11

    .line 183
    .line 184
    return v2

    .line 185
    :cond_11
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->r:I

    .line 186
    .line 187
    iget v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->r:I

    .line 188
    .line 189
    if-ne v1, v3, :cond_14

    .line 190
    .line 191
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->s:I

    .line 192
    .line 193
    iget v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->s:I

    .line 194
    .line 195
    if-ne v1, v3, :cond_14

    .line 196
    .line 197
    iget-object v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->t:Landroidx/compose/ui/graphics/ColorFilter;

    .line 198
    .line 199
    iget-object v3, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->t:Landroidx/compose/ui/graphics/ColorFilter;

    .line 200
    .line 201
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-nez v1, :cond_12

    .line 206
    .line 207
    return v2

    .line 208
    :cond_12
    iget-object p0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->u:Landroidx/compose/ui/graphics/LayerOutsets;

    .line 209
    .line 210
    iget-object p1, p1, Landroidx/compose/ui/graphics/GraphicsLayerElement;->u:Landroidx/compose/ui/graphics/LayerOutsets;

    .line 211
    .line 212
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result p0

    .line 216
    if-nez p0, :cond_13

    .line 217
    .line 218
    return v2

    .line 219
    :cond_13
    return v0

    .line 220
    :cond_14
    return v2
.end method

.method public final g()Landroidx/compose/ui/Modifier$Node;
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->b:F

    .line 7
    .line 8
    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->x:F

    .line 9
    .line 10
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->c:F

    .line 11
    .line 12
    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->y:F

    .line 13
    .line 14
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->d:F

    .line 15
    .line 16
    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->z:F

    .line 17
    .line 18
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->e:F

    .line 19
    .line 20
    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->A:F

    .line 21
    .line 22
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->f:F

    .line 23
    .line 24
    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->B:F

    .line 25
    .line 26
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->g:F

    .line 27
    .line 28
    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->C:F

    .line 29
    .line 30
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->h:F

    .line 31
    .line 32
    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->D:F

    .line 33
    .line 34
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->i:F

    .line 35
    .line 36
    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->E:F

    .line 37
    .line 38
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->j:F

    .line 39
    .line 40
    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->F:F

    .line 41
    .line 42
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->k:F

    .line 43
    .line 44
    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->G:F

    .line 45
    .line 46
    iget-wide v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->l:J

    .line 47
    .line 48
    iput-wide v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->H:J

    .line 49
    .line 50
    iget-object v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->m:Landroidx/compose/ui/graphics/Shape;

    .line 51
    .line 52
    iput-object v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->I:Landroidx/compose/ui/graphics/Shape;

    .line 53
    .line 54
    iget-boolean v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->n:Z

    .line 55
    .line 56
    iput-boolean v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->J:Z

    .line 57
    .line 58
    iget-object v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->o:Landroidx/compose/ui/graphics/RenderEffect;

    .line 59
    .line 60
    iput-object v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->K:Landroidx/compose/ui/graphics/RenderEffect;

    .line 61
    .line 62
    iget-wide v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->p:J

    .line 63
    .line 64
    iput-wide v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->L:J

    .line 65
    .line 66
    iget-wide v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->q:J

    .line 67
    .line 68
    iput-wide v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->M:J

    .line 69
    .line 70
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->r:I

    .line 71
    .line 72
    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->N:I

    .line 73
    .line 74
    iget v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->s:I

    .line 75
    .line 76
    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->O:I

    .line 77
    .line 78
    iget-object v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->t:Landroidx/compose/ui/graphics/ColorFilter;

    .line 79
    .line 80
    iput-object v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->P:Landroidx/compose/ui/graphics/ColorFilter;

    .line 81
    .line 82
    iget-object p0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->u:Landroidx/compose/ui/graphics/LayerOutsets;

    .line 83
    .line 84
    iput-object p0, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->Q:Landroidx/compose/ui/graphics/LayerOutsets;

    .line 85
    .line 86
    new-instance p0, Landroidx/compose/ui/graphics/a;

    .line 87
    .line 88
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/a;-><init>(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)V

    .line 89
    .line 90
    .line 91
    iput-object p0, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->R:Landroidx/compose/ui/graphics/a;

    .line 92
    .line 93
    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->b:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget v2, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->c:F

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, Lq;->a(FII)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->d:F

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Lq;->a(FII)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget v2, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->e:F

    .line 23
    .line 24
    invoke-static {v2, v0, v1}, Lq;->a(FII)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget v2, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->f:F

    .line 29
    .line 30
    invoke-static {v2, v0, v1}, Lq;->a(FII)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget v2, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->g:F

    .line 35
    .line 36
    invoke-static {v2, v0, v1}, Lq;->a(FII)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget v2, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->h:F

    .line 41
    .line 42
    invoke-static {v2, v0, v1}, Lq;->a(FII)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget v2, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->i:F

    .line 47
    .line 48
    invoke-static {v2, v0, v1}, Lq;->a(FII)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget v2, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->j:F

    .line 53
    .line 54
    invoke-static {v2, v0, v1}, Lq;->a(FII)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iget v2, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->k:F

    .line 59
    .line 60
    invoke-static {v2, v0, v1}, Lq;->a(FII)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    sget v2, Landroidx/compose/ui/graphics/TransformOrigin;->c:I

    .line 65
    .line 66
    iget-wide v2, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->l:J

    .line 67
    .line 68
    invoke-static {v0, v1, v2, v3}, Ljb;->a(IIJ)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iget-object v2, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->m:Landroidx/compose/ui/graphics/Shape;

    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    add-int/2addr v2, v0

    .line 79
    mul-int/2addr v2, v1

    .line 80
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->n:Z

    .line 81
    .line 82
    invoke-static {v2, v1, v0}, Ljb;->b(IIZ)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    const/4 v2, 0x0

    .line 87
    iget-object v3, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->o:Landroidx/compose/ui/graphics/RenderEffect;

    .line 88
    .line 89
    if-nez v3, :cond_0

    .line 90
    .line 91
    move v3, v2

    .line 92
    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    :goto_0
    add-int/2addr v0, v3

    .line 98
    mul-int/2addr v0, v1

    .line 99
    sget v3, Landroidx/compose/ui/graphics/Color;->i:I

    .line 100
    .line 101
    iget-wide v3, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->p:J

    .line 102
    .line 103
    invoke-static {v0, v1, v3, v4}, Ljb;->a(IIJ)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    iget-wide v3, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->q:J

    .line 108
    .line 109
    invoke-static {v0, v1, v3, v4}, Ljb;->a(IIJ)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    iget v3, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->r:I

    .line 114
    .line 115
    invoke-static {v3, v0, v1}, Lq;->b(III)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    iget v3, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->s:I

    .line 120
    .line 121
    invoke-static {v3, v0, v1}, Lq;->b(III)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    iget-object v3, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->t:Landroidx/compose/ui/graphics/ColorFilter;

    .line 126
    .line 127
    if-nez v3, :cond_1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    :goto_1
    add-int/2addr v0, v2

    .line 135
    mul-int/2addr v0, v1

    .line 136
    iget-object p0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->u:Landroidx/compose/ui/graphics/LayerOutsets;

    .line 137
    .line 138
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/LayerOutsets;->hashCode()I

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    add-int/2addr p0, v0

    .line 143
    return p0
.end method

.method public final i(Landroidx/compose/ui/Modifier$Node;)V
    .locals 2

    .line 1
    check-cast p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;

    .line 2
    .line 3
    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->b:F

    .line 4
    .line 5
    iput v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->x:F

    .line 6
    .line 7
    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->c:F

    .line 8
    .line 9
    iput v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->y:F

    .line 10
    .line 11
    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->d:F

    .line 12
    .line 13
    iput v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->z:F

    .line 14
    .line 15
    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->e:F

    .line 16
    .line 17
    iput v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->A:F

    .line 18
    .line 19
    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->f:F

    .line 20
    .line 21
    iput v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->B:F

    .line 22
    .line 23
    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->g:F

    .line 24
    .line 25
    iput v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->C:F

    .line 26
    .line 27
    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->h:F

    .line 28
    .line 29
    iput v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->D:F

    .line 30
    .line 31
    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->i:F

    .line 32
    .line 33
    iput v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->E:F

    .line 34
    .line 35
    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->j:F

    .line 36
    .line 37
    iput v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->F:F

    .line 38
    .line 39
    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->k:F

    .line 40
    .line 41
    iput v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->G:F

    .line 42
    .line 43
    iget-wide v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->l:J

    .line 44
    .line 45
    iput-wide v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->H:J

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->m:Landroidx/compose/ui/graphics/Shape;

    .line 48
    .line 49
    iput-object v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->I:Landroidx/compose/ui/graphics/Shape;

    .line 50
    .line 51
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->n:Z

    .line 52
    .line 53
    iput-boolean v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->J:Z

    .line 54
    .line 55
    iget-object v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->o:Landroidx/compose/ui/graphics/RenderEffect;

    .line 56
    .line 57
    iput-object v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->K:Landroidx/compose/ui/graphics/RenderEffect;

    .line 58
    .line 59
    iget-wide v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->p:J

    .line 60
    .line 61
    iput-wide v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->L:J

    .line 62
    .line 63
    iget-wide v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->q:J

    .line 64
    .line 65
    iput-wide v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->M:J

    .line 66
    .line 67
    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->r:I

    .line 68
    .line 69
    iput v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->N:I

    .line 70
    .line 71
    iget v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->s:I

    .line 72
    .line 73
    iput v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->O:I

    .line 74
    .line 75
    iget-object v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->t:Landroidx/compose/ui/graphics/ColorFilter;

    .line 76
    .line 77
    iput-object v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->P:Landroidx/compose/ui/graphics/ColorFilter;

    .line 78
    .line 79
    iget-object p0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->u:Landroidx/compose/ui/graphics/LayerOutsets;

    .line 80
    .line 81
    iput-object p0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->Q:Landroidx/compose/ui/graphics/LayerOutsets;

    .line 82
    .line 83
    iget-object p0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->R:Landroidx/compose/ui/graphics/a;

    .line 84
    .line 85
    iget-object v0, p1, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 86
    .line 87
    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 88
    .line 89
    if-nez v0, :cond_0

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    const/4 v0, 0x2

    .line 93
    invoke-static {p1, v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->e(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object p1, p1, Landroidx/compose/ui/node/NodeCoordinator;->E:Landroidx/compose/ui/node/NodeCoordinator;

    .line 98
    .line 99
    if-eqz p1, :cond_1

    .line 100
    .line 101
    const/4 v0, 0x1

    .line 102
    invoke-virtual {p1, p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->D1(Lkotlin/jvm/functions/Function1;Z)V

    .line 103
    .line 104
    .line 105
    :cond_1
    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->l:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/TransformOrigin;->b(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->p:J

    .line 8
    .line 9
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-wide v2, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->q:J

    .line 14
    .line 15
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "CompositingStrategy(value="

    .line 20
    .line 21
    iget v4, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->r:I

    .line 22
    .line 23
    const-string v5, ")"

    .line 24
    .line 25
    invoke-static {v3, v4, v5}, Ljb;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget v4, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->s:I

    .line 30
    .line 31
    invoke-static {v4}, Landroidx/compose/ui/graphics/BlendMode;->a(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const-string v6, ", scaleY="

    .line 36
    .line 37
    const-string v7, ", alpha="

    .line 38
    .line 39
    const-string v8, "GraphicsLayerElement(scaleX="

    .line 40
    .line 41
    iget v9, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->b:F

    .line 42
    .line 43
    iget v10, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->c:F

    .line 44
    .line 45
    invoke-static {v8, v9, v6, v10, v7}, Lq;->n(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    iget v7, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->d:F

    .line 50
    .line 51
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v7, ", translationX="

    .line 55
    .line 56
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget v7, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->e:F

    .line 60
    .line 61
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v7, ", translationY="

    .line 65
    .line 66
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v7, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->f:F

    .line 70
    .line 71
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v7, ", shadowElevation="

    .line 75
    .line 76
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget v7, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->g:F

    .line 80
    .line 81
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v7, ", rotationX="

    .line 85
    .line 86
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget v7, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->h:F

    .line 90
    .line 91
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v7, ", rotationY="

    .line 95
    .line 96
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget v7, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->i:F

    .line 100
    .line 101
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v7, ", rotationZ="

    .line 105
    .line 106
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget v7, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->j:F

    .line 110
    .line 111
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v7, ", cameraDistance="

    .line 115
    .line 116
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget v7, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->k:F

    .line 120
    .line 121
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v7, ", transformOrigin="

    .line 125
    .line 126
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v0, ", shape="

    .line 133
    .line 134
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->m:Landroidx/compose/ui/graphics/Shape;

    .line 138
    .line 139
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v0, ", clip="

    .line 143
    .line 144
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->n:Z

    .line 148
    .line 149
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v0, ", renderEffect="

    .line 153
    .line 154
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->o:Landroidx/compose/ui/graphics/RenderEffect;

    .line 158
    .line 159
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v0, ", ambientShadowColor="

    .line 163
    .line 164
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v0, ", spotShadowColor="

    .line 168
    .line 169
    const-string v7, ", compositingStrategy="

    .line 170
    .line 171
    invoke-static {v6, v1, v0, v2, v7}, Lq;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const-string v0, ", blendMode="

    .line 175
    .line 176
    const-string v1, ", colorFilter="

    .line 177
    .line 178
    invoke-static {v6, v3, v0, v4, v1}, Lq;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->t:Landroidx/compose/ui/graphics/ColorFilter;

    .line 182
    .line 183
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v0, ", outsets="

    .line 187
    .line 188
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    iget-object p0, p0, Landroidx/compose/ui/graphics/GraphicsLayerElement;->u:Landroidx/compose/ui/graphics/LayerOutsets;

    .line 192
    .line 193
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    return-object p0
.end method
