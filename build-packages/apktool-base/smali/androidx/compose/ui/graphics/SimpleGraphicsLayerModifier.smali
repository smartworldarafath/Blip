.class final Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;
.super Landroidx/compose/ui/Modifier$Node;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;
.implements Landroidx/compose/ui/node/SemanticsModifierNode;


# instance fields
.field public A:F

.field public B:F

.field public C:F

.field public D:F

.field public E:F

.field public F:F

.field public G:F

.field public H:J

.field public I:Landroidx/compose/ui/graphics/Shape;

.field public J:Z

.field public K:Landroidx/compose/ui/graphics/RenderEffect;

.field public L:J

.field public M:J

.field public N:I

.field public O:I

.field public P:Landroidx/compose/ui/graphics/ColorFilter;

.field public Q:Landroidx/compose/ui/graphics/LayerOutsets;

.field public R:Landroidx/compose/ui/graphics/a;

.field public x:F

.field public y:F

.field public z:F


# virtual methods
.method public final E0(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->J:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->I:Landroidx/compose/ui/graphics/Shape;

    .line 7
    .line 8
    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->d(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/graphics/Shape;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final N0()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final j(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 1

    .line 1
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget p3, p2, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 6
    .line 7
    iget p4, p2, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/ui/graphics/b;

    .line 10
    .line 11
    invoke-direct {v0, p2, p0}, Landroidx/compose/ui/graphics/b;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p1, p3, p4, p0, v0}, Landroidx/compose/ui/layout/MeasureScope;->B(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final n()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->x:F

    .line 4
    .line 5
    iget v2, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->y:F

    .line 6
    .line 7
    iget v3, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->z:F

    .line 8
    .line 9
    iget v4, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->A:F

    .line 10
    .line 11
    iget v5, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->B:F

    .line 12
    .line 13
    iget v6, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->C:F

    .line 14
    .line 15
    iget v7, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->D:F

    .line 16
    .line 17
    iget v8, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->E:F

    .line 18
    .line 19
    iget v9, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->F:F

    .line 20
    .line 21
    iget v10, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->G:F

    .line 22
    .line 23
    iget-wide v11, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->H:J

    .line 24
    .line 25
    invoke-static {v11, v12}, Landroidx/compose/ui/graphics/TransformOrigin;->b(J)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v11

    .line 29
    iget-object v12, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->I:Landroidx/compose/ui/graphics/Shape;

    .line 30
    .line 31
    iget-boolean v13, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->J:Z

    .line 32
    .line 33
    iget-object v14, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->K:Landroidx/compose/ui/graphics/RenderEffect;

    .line 34
    .line 35
    move-object/from16 v16, v14

    .line 36
    .line 37
    iget-wide v14, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->L:J

    .line 38
    .line 39
    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v14

    .line 43
    move-object/from16 v17, v14

    .line 44
    .line 45
    iget-wide v14, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->M:J

    .line 46
    .line 47
    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v14

    .line 51
    iget v15, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->N:I

    .line 52
    .line 53
    move-object/from16 v18, v14

    .line 54
    .line 55
    const-string v14, "CompositingStrategy(value="

    .line 56
    .line 57
    move/from16 v19, v13

    .line 58
    .line 59
    const-string v13, ")"

    .line 60
    .line 61
    invoke-static {v14, v15, v13}, Ljb;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v14

    .line 65
    iget v15, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->O:I

    .line 66
    .line 67
    invoke-static {v15}, Landroidx/compose/ui/graphics/BlendMode;->a(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v15

    .line 71
    move-object/from16 v20, v13

    .line 72
    .line 73
    iget-object v13, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->P:Landroidx/compose/ui/graphics/ColorFilter;

    .line 74
    .line 75
    iget-object v0, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->Q:Landroidx/compose/ui/graphics/LayerOutsets;

    .line 76
    .line 77
    move-object/from16 p0, v0

    .line 78
    .line 79
    const-string v0, ", scaleY="

    .line 80
    .line 81
    move-object/from16 v21, v13

    .line 82
    .line 83
    const-string v13, ", alpha = "

    .line 84
    .line 85
    move-object/from16 v22, v14

    .line 86
    .line 87
    const-string v14, "SimpleGraphicsLayerModifier(scaleX="

    .line 88
    .line 89
    invoke-static {v14, v1, v0, v2, v13}, Lq;->n(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", translationX="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v1, ", translationY="

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v1, ", shadowElevation="

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v1, ", rotationX="

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v1, ", rotationY="

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, ", rotationZ="

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v1, ", cameraDistance="

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v1, ", transformOrigin="

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v1, ", shape="

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v1, ", clip="

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    move/from16 v1, v19

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v1, ", renderEffect="

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    move-object/from16 v1, v16

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v1, ", ambientShadowColor="

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v1, ", spotShadowColor="

    .line 194
    .line 195
    const-string v2, ", compositingStrategy="

    .line 196
    .line 197
    move-object/from16 v3, v17

    .line 198
    .line 199
    move-object/from16 v4, v18

    .line 200
    .line 201
    invoke-static {v0, v3, v1, v4, v2}, Lq;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    const-string v1, ", blendMode="

    .line 205
    .line 206
    const-string v2, ", colorFilter="

    .line 207
    .line 208
    move-object/from16 v3, v22

    .line 209
    .line 210
    invoke-static {v0, v3, v1, v15, v2}, Lq;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    move-object/from16 v1, v21

    .line 214
    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v1, "outsets="

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    move-object/from16 v1, p0

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    move-object/from16 v1, v20

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    return-object v0
.end method
