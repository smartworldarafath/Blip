.class public final Landroidx/compose/foundation/pager/PagerCacheWindowLogic;
.super Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final n:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

.field public final o:Landroidx/compose/foundation/pager/PagerCacheWindowScope;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/pager/PagerState$pagerCacheWindow$1;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Lia;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;-><init>(Landroidx/compose/foundation/pager/PagerState$pagerCacheWindow$1;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->n:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 5
    .line 6
    new-instance p1, Landroidx/compose/foundation/pager/PagerCacheWindowScope;

    .line 7
    .line 8
    invoke-direct {p1, p3}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;-><init>(Lia;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->o:Landroidx/compose/foundation/pager/PagerCacheWindowScope;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final h(FLandroidx/compose/foundation/pager/PagerMeasureResult;)V
    .locals 10

    .line 1
    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->o:Landroidx/compose/foundation/pager/PagerCacheWindowScope;

    .line 2
    .line 3
    iput-object p2, v1, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->b:Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 4
    .line 5
    iget-object p2, p0, Landroidx/compose/foundation/pager/PagerCacheWindowLogic;->n:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 6
    .line 7
    iput-object p2, v1, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->c:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 8
    .line 9
    neg-float v7, p1

    .line 10
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->g()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->c()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 p2, 0x0

    .line 18
    const/4 v0, 0x1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz p1, :cond_3

    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->h()I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->i()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->m:I

    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->b()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->d()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->i()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->g()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->f()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    cmpg-float v8, v7, p2

    .line 55
    .line 56
    iget-object v9, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->e:Landroidx/collection/MutableIntObjectMap;

    .line 57
    .line 58
    if-gtz v8, :cond_1

    .line 59
    .line 60
    rsub-int/lit8 v3, v5, 0x0

    .line 61
    .line 62
    iput v3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    .line 63
    .line 64
    iput p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->h:I

    .line 65
    .line 66
    :goto_0
    iget p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    .line 67
    .line 68
    if-lez p1, :cond_0

    .line 69
    .line 70
    iget p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->h:I

    .line 71
    .line 72
    if-lez p1, :cond_0

    .line 73
    .line 74
    add-int/lit8 p1, p1, -0x1

    .line 75
    .line 76
    invoke-virtual {v9, p1}, Landroidx/collection/IntObjectMap;->a(I)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_0

    .line 81
    .line 82
    iget p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->h:I

    .line 83
    .line 84
    sub-int/2addr p1, v0

    .line 85
    invoke-virtual {v9, p1}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    check-cast p1, Landroidx/compose/foundation/lazy/layout/CachedItem;

    .line 93
    .line 94
    iget p1, p1, Landroidx/compose/foundation/lazy/layout/CachedItem;->b:I

    .line 95
    .line 96
    iget v3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->h:I

    .line 97
    .line 98
    add-int/lit8 v3, v3, -0x1

    .line 99
    .line 100
    iput v3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->h:I

    .line 101
    .line 102
    iget v3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    .line 103
    .line 104
    sub-int/2addr v3, p1

    .line 105
    iput v3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    iget p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->h:I

    .line 109
    .line 110
    sub-int/2addr p1, v0

    .line 111
    invoke-virtual {p0, v2, p1}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->e(II)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_1
    rsub-int/lit8 p1, v6, 0x0

    .line 116
    .line 117
    iput p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    .line 118
    .line 119
    iput v3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->i:I

    .line 120
    .line 121
    :goto_1
    iget p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    .line 122
    .line 123
    if-lez p1, :cond_2

    .line 124
    .line 125
    iget p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->i:I

    .line 126
    .line 127
    add-int/lit8 v3, v4, -0x1

    .line 128
    .line 129
    if-ge p1, v3, :cond_2

    .line 130
    .line 131
    add-int/lit8 p1, p1, 0x1

    .line 132
    .line 133
    invoke-virtual {v9, p1}, Landroidx/collection/IntObjectMap;->a(I)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_2

    .line 138
    .line 139
    iget p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->i:I

    .line 140
    .line 141
    add-int/2addr p1, v0

    .line 142
    invoke-virtual {v9, p1}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    check-cast p1, Landroidx/compose/foundation/lazy/layout/CachedItem;

    .line 150
    .line 151
    iget p1, p1, Landroidx/compose/foundation/lazy/layout/CachedItem;->b:I

    .line 152
    .line 153
    iget v3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->i:I

    .line 154
    .line 155
    add-int/2addr v3, v0

    .line 156
    iput v3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->i:I

    .line 157
    .line 158
    iget v3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    .line 159
    .line 160
    sub-int/2addr v3, p1

    .line 161
    iput v3, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_2
    iget p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->i:I

    .line 165
    .line 166
    add-int/2addr p1, v0

    .line 167
    sub-int/2addr v4, v0

    .line 168
    invoke-virtual {p0, p1, v4}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->e(II)V

    .line 169
    .line 170
    .line 171
    :cond_3
    :goto_2
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->c()Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-eqz p1, :cond_6

    .line 176
    .line 177
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->h()I

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    iget-object p1, p1, Landroidx/compose/foundation/pager/PagerMeasureResult;->t:Landroidx/compose/ui/unit/Density;

    .line 185
    .line 186
    if-eqz p1, :cond_4

    .line 187
    .line 188
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->a:Landroidx/compose/foundation/pager/PagerState$pagerCacheWindow$1;

    .line 189
    .line 190
    iget-object p1, p1, Landroidx/compose/foundation/pager/PagerState$pagerCacheWindow$1;->a:Landroidx/compose/foundation/pager/PagerState;

    .line 191
    .line 192
    iget p1, p1, Landroidx/compose/foundation/pager/PagerState;->o:I

    .line 193
    .line 194
    move v4, p1

    .line 195
    move p1, v2

    .line 196
    goto :goto_3

    .line 197
    :cond_4
    move p1, v2

    .line 198
    move v4, p1

    .line 199
    :goto_3
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->b()I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->d()I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->g()I

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->f()I

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    cmpg-float p2, v7, p2

    .line 216
    .line 217
    if-gtz p2, :cond_5

    .line 218
    .line 219
    move v8, v0

    .line 220
    :goto_4
    move-object v0, p0

    .line 221
    goto :goto_5

    .line 222
    :cond_5
    move v8, p1

    .line 223
    goto :goto_4

    .line 224
    :goto_5
    invoke-virtual/range {v0 .. v8}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->d(Landroidx/compose/foundation/lazy/layout/CacheWindowScope;IIIIIFZ)V

    .line 225
    .line 226
    .line 227
    goto :goto_6

    .line 228
    :cond_6
    move-object v0, p0

    .line 229
    :goto_6
    iput v7, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->f:F

    .line 230
    .line 231
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->g()V

    .line 232
    .line 233
    .line 234
    return-void
.end method
