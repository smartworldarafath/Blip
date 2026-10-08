.class public final Landroidx/compose/ui/graphics/vector/PathComponent;
.super Landroidx/compose/ui/graphics/vector/VNode;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public b:Landroidx/compose/ui/graphics/Brush;

.field public c:F

.field public d:Ljava/util/List;

.field public e:F

.field public f:F

.field public g:Landroidx/compose/ui/graphics/Brush;

.field public h:I

.field public i:I

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Landroidx/compose/ui/graphics/drawscope/Stroke;

.field public final r:Landroidx/compose/ui/graphics/AndroidPath;

.field public s:Landroidx/compose/ui/graphics/AndroidPath;

.field public t:Landroidx/compose/ui/graphics/AndroidPath;

.field public final u:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->c:F

    .line 7
    .line 8
    sget v1, Landroidx/compose/ui/graphics/vector/VectorKt;->a:I

    .line 9
    .line 10
    sget-object v1, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 11
    .line 12
    iput-object v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->d:Ljava/util/List;

    .line 13
    .line 14
    iput v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->e:F

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->h:I

    .line 18
    .line 19
    iput v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->i:I

    .line 20
    .line 21
    const/high16 v1, 0x40800000    # 4.0f

    .line 22
    .line 23
    iput v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->j:F

    .line 24
    .line 25
    iput v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->l:F

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->n:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->o:Z

    .line 31
    .line 32
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->a()Landroidx/compose/ui/graphics/AndroidPath;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->r:Landroidx/compose/ui/graphics/AndroidPath;

    .line 37
    .line 38
    iput-object v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->s:Landroidx/compose/ui/graphics/AndroidPath;

    .line 39
    .line 40
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->k:Lkotlin/LazyThreadSafetyMode;

    .line 41
    .line 42
    new-instance v2, Lvc;

    .line 43
    .line 44
    invoke-direct {v2, v0}, Lvc;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->u:Lkotlin/Lazy;

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 13

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->d:Ljava/util/List;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->r:Landroidx/compose/ui/graphics/AndroidPath;

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/vector/PathParserKt;->b(Ljava/util/List;Landroidx/compose/ui/graphics/Path;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->e()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->p:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/PathComponent;->e()V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->n:Z

    .line 25
    .line 26
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->p:Z

    .line 27
    .line 28
    iget-object v3, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->b:Landroidx/compose/ui/graphics/Brush;

    .line 29
    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->s:Landroidx/compose/ui/graphics/AndroidPath;

    .line 33
    .line 34
    iget v4, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->c:F

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    const/16 v6, 0x38

    .line 38
    .line 39
    move-object v1, p1

    .line 40
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->H(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move-object v1, p1

    .line 45
    :goto_1
    iget-object v9, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->g:Landroidx/compose/ui/graphics/Brush;

    .line 46
    .line 47
    if-eqz v9, :cond_5

    .line 48
    .line 49
    iget-object p1, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->q:Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 50
    .line 51
    iget-boolean v2, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->o:Z

    .line 52
    .line 53
    if-nez v2, :cond_4

    .line 54
    .line 55
    if-nez p1, :cond_3

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    move-object v11, p1

    .line 59
    goto :goto_3

    .line 60
    :cond_4
    :goto_2
    new-instance v3, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 61
    .line 62
    iget v4, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->f:F

    .line 63
    .line 64
    iget v5, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->j:F

    .line 65
    .line 66
    iget v6, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->h:I

    .line 67
    .line 68
    iget v7, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->i:I

    .line 69
    .line 70
    const/16 v8, 0x10

    .line 71
    .line 72
    invoke-direct/range {v3 .. v8}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    .line 73
    .line 74
    .line 75
    iput-object v3, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->q:Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 76
    .line 77
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->o:Z

    .line 78
    .line 79
    move-object v11, v3

    .line 80
    :goto_3
    iget-object v8, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->s:Landroidx/compose/ui/graphics/AndroidPath;

    .line 81
    .line 82
    iget v10, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->e:F

    .line 83
    .line 84
    const/16 v12, 0x30

    .line 85
    .line 86
    move-object v7, v1

    .line 87
    invoke-static/range {v7 .. v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->H(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    .line 88
    .line 89
    .line 90
    :cond_5
    return-void
.end method

.method public final e()V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->k:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpg-float v0, v0, v1

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->r:Landroidx/compose/ui/graphics/AndroidPath;

    .line 7
    .line 8
    const/high16 v3, 0x3f800000    # 1.0f

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->l:F

    .line 13
    .line 14
    cmpg-float v0, v0, v3

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iput-object v2, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->s:Landroidx/compose/ui/graphics/AndroidPath;

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->s:Landroidx/compose/ui/graphics/AndroidPath;

    .line 22
    .line 23
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v4, 0x0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->a()Landroidx/compose/ui/graphics/AndroidPath;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->s:Landroidx/compose/ui/graphics/AndroidPath;

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->s:Landroidx/compose/ui/graphics/AndroidPath;

    .line 38
    .line 39
    iget-object v0, v0, Landroidx/compose/ui/graphics/AndroidPath;->a:Landroid/graphics/Path;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/graphics/Path;->getFillType()Landroid/graphics/Path$FillType;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget-object v5, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 46
    .line 47
    const/4 v6, 0x1

    .line 48
    if-ne v0, v5, :cond_2

    .line 49
    .line 50
    move v0, v6

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    move v0, v4

    .line 53
    :goto_0
    iget-object v7, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->s:Landroidx/compose/ui/graphics/AndroidPath;

    .line 54
    .line 55
    iget-object v7, v7, Landroidx/compose/ui/graphics/AndroidPath;->a:Landroid/graphics/Path;

    .line 56
    .line 57
    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    .line 58
    .line 59
    .line 60
    iget-object v7, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->s:Landroidx/compose/ui/graphics/AndroidPath;

    .line 61
    .line 62
    iget-object v7, v7, Landroidx/compose/ui/graphics/AndroidPath;->a:Landroid/graphics/Path;

    .line 63
    .line 64
    if-ne v0, v6, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    sget-object v5, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 68
    .line 69
    :goto_1
    invoke-virtual {v7, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 70
    .line 71
    .line 72
    :goto_2
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->u:Lkotlin/Lazy;

    .line 73
    .line 74
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    check-cast v5, Landroidx/compose/ui/graphics/PathMeasure;

    .line 79
    .line 80
    check-cast v5, Landroidx/compose/ui/graphics/AndroidPathMeasure;

    .line 81
    .line 82
    iget-object v5, v5, Landroidx/compose/ui/graphics/AndroidPathMeasure;->a:Landroid/graphics/PathMeasure;

    .line 83
    .line 84
    if-eqz v2, :cond_4

    .line 85
    .line 86
    iget-object v2, v2, Landroidx/compose/ui/graphics/AndroidPath;->a:Landroid/graphics/Path;

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_4
    const/4 v2, 0x0

    .line 90
    :goto_3
    invoke-virtual {v5, v2, v4}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Landroidx/compose/ui/graphics/PathMeasure;

    .line 98
    .line 99
    check-cast v2, Landroidx/compose/ui/graphics/AndroidPathMeasure;

    .line 100
    .line 101
    iget-object v2, v2, Landroidx/compose/ui/graphics/AndroidPathMeasure;->a:Landroid/graphics/PathMeasure;

    .line 102
    .line 103
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    iget v4, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->k:F

    .line 108
    .line 109
    iget v5, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->m:F

    .line 110
    .line 111
    add-float/2addr v4, v5

    .line 112
    rem-float/2addr v4, v3

    .line 113
    mul-float/2addr v4, v2

    .line 114
    iget v6, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->l:F

    .line 115
    .line 116
    add-float/2addr v6, v5

    .line 117
    rem-float/2addr v6, v3

    .line 118
    mul-float/2addr v6, v2

    .line 119
    cmpl-float v3, v4, v6

    .line 120
    .line 121
    if-lez v3, :cond_6

    .line 122
    .line 123
    iget-object v3, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->t:Landroidx/compose/ui/graphics/AndroidPath;

    .line 124
    .line 125
    if-eqz v3, :cond_5

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_5
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->a()Landroidx/compose/ui/graphics/AndroidPath;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    iput-object v3, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->t:Landroidx/compose/ui/graphics/AndroidPath;

    .line 133
    .line 134
    :goto_4
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/AndroidPath;->i()V

    .line 135
    .line 136
    .line 137
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    check-cast v5, Landroidx/compose/ui/graphics/PathMeasure;

    .line 142
    .line 143
    check-cast v5, Landroidx/compose/ui/graphics/AndroidPathMeasure;

    .line 144
    .line 145
    invoke-virtual {v5, v4, v2, v3}, Landroidx/compose/ui/graphics/AndroidPathMeasure;->a(FFLandroidx/compose/ui/graphics/AndroidPath;)Z

    .line 146
    .line 147
    .line 148
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->s:Landroidx/compose/ui/graphics/AndroidPath;

    .line 149
    .line 150
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Path;->b(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/AndroidPath;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/AndroidPath;->i()V

    .line 154
    .line 155
    .line 156
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    check-cast v0, Landroidx/compose/ui/graphics/PathMeasure;

    .line 161
    .line 162
    check-cast v0, Landroidx/compose/ui/graphics/AndroidPathMeasure;

    .line 163
    .line 164
    invoke-virtual {v0, v1, v6, v3}, Landroidx/compose/ui/graphics/AndroidPathMeasure;->a(FFLandroidx/compose/ui/graphics/AndroidPath;)Z

    .line 165
    .line 166
    .line 167
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->s:Landroidx/compose/ui/graphics/AndroidPath;

    .line 168
    .line 169
    invoke-static {p0, v3}, Landroidx/compose/ui/graphics/Path;->b(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/AndroidPath;)V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_6
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, Landroidx/compose/ui/graphics/PathMeasure;

    .line 178
    .line 179
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->s:Landroidx/compose/ui/graphics/AndroidPath;

    .line 180
    .line 181
    check-cast v0, Landroidx/compose/ui/graphics/AndroidPathMeasure;

    .line 182
    .line 183
    invoke-virtual {v0, v4, v6, p0}, Landroidx/compose/ui/graphics/AndroidPathMeasure;->a(FFLandroidx/compose/ui/graphics/AndroidPath;)Z

    .line 184
    .line 185
    .line 186
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/PathComponent;->r:Landroidx/compose/ui/graphics/AndroidPath;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
