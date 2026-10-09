.class public final Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;


# instance fields
.field public final a:Landroidx/collection/MutableObjectIntMap;

.field public final b:[Ljava/lang/Object;

.field public final c:I


# direct methods
.method public constructor <init>(Lkotlin/ranges/IntRange;Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;->e()Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iget v0, p1, Lkotlin/ranges/IntProgression;->j:I

    .line 9
    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v1, "negative nearestRange.first"

    .line 14
    .line 15
    invoke-static {v1}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    iget p1, p1, Lkotlin/ranges/IntProgression;->k:I

    .line 19
    .line 20
    iget v1, p2, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->b:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    .line 24
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-ge p1, v0, :cond_1

    .line 29
    .line 30
    sget-object p1, Landroidx/collection/ObjectIntMapKt;->a:Landroidx/collection/MutableObjectIntMap;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;->a:Landroidx/collection/MutableObjectIntMap;

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    new-array p2, p1, [Ljava/lang/Object;

    .line 39
    .line 40
    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;->b:[Ljava/lang/Object;

    .line 41
    .line 42
    iput p1, p0, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;->c:I

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    sub-int v1, p1, v0

    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    new-array v2, v1, [Ljava/lang/Object;

    .line 50
    .line 51
    iput-object v2, p0, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;->b:[Ljava/lang/Object;

    .line 52
    .line 53
    iput v0, p0, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;->c:I

    .line 54
    .line 55
    new-instance v2, Landroidx/collection/MutableObjectIntMap;

    .line 56
    .line 57
    invoke-direct {v2, v1}, Landroidx/collection/MutableObjectIntMap;-><init>(I)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p2, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 61
    .line 62
    const-string v3, ", size "

    .line 63
    .line 64
    const-string v4, "Index "

    .line 65
    .line 66
    if-ltz v0, :cond_2

    .line 67
    .line 68
    iget v5, p2, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->b:I

    .line 69
    .line 70
    if-ge v0, v5, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    iget v5, p2, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->b:I

    .line 74
    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-static {v5}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->e(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :goto_1
    if-ltz p1, :cond_3

    .line 97
    .line 98
    iget v5, p2, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->b:I

    .line 99
    .line 100
    if-ge p1, v5, :cond_3

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    iget p2, p2, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->b:I

    .line 104
    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-static {p2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->e(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :goto_2
    if-lt p1, v0, :cond_4

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v3, "toIndex ("

    .line 132
    .line 133
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v3, ") should be not smaller than fromIndex ("

    .line 140
    .line 141
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v3, ")"

    .line 148
    .line 149
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-static {p2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :goto_3
    invoke-static {v0, v1}, Landroidx/compose/foundation/lazy/layout/IntervalListKt;->a(ILandroidx/compose/runtime/collection/MutableVector;)I

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    iget-object v3, v1, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 164
    .line 165
    aget-object v3, v3, p2

    .line 166
    .line 167
    check-cast v3, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 168
    .line 169
    iget v3, v3, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->a:I

    .line 170
    .line 171
    :goto_4
    if-gt v3, p1, :cond_8

    .line 172
    .line 173
    iget-object v4, v1, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 174
    .line 175
    aget-object v4, v4, p2

    .line 176
    .line 177
    check-cast v4, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 178
    .line 179
    iget-object v5, v4, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->c:Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;

    .line 180
    .line 181
    invoke-interface {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;->getKey()Lkotlin/jvm/functions/Function1;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    iget v6, v4, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->a:I

    .line 186
    .line 187
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    iget v8, v4, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->b:I

    .line 192
    .line 193
    add-int/2addr v8, v6

    .line 194
    add-int/lit8 v8, v8, -0x1

    .line 195
    .line 196
    invoke-static {p1, v8}, Ljava/lang/Math;->min(II)I

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    if-gt v7, v8, :cond_7

    .line 201
    .line 202
    :goto_5
    if-eqz v5, :cond_5

    .line 203
    .line 204
    sub-int v9, v7, v6

    .line 205
    .line 206
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v9

    .line 210
    invoke-interface {v5, v9}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    if-nez v9, :cond_6

    .line 215
    .line 216
    :cond_5
    new-instance v9, Landroidx/compose/foundation/lazy/layout/DefaultLazyKey;

    .line 217
    .line 218
    invoke-direct {v9, v7}, Landroidx/compose/foundation/lazy/layout/DefaultLazyKey;-><init>(I)V

    .line 219
    .line 220
    .line 221
    :cond_6
    invoke-virtual {v2, v7, v9}, Landroidx/collection/MutableObjectIntMap;->g(ILjava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    iget-object v10, p0, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;->b:[Ljava/lang/Object;

    .line 225
    .line 226
    iget v11, p0, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;->c:I

    .line 227
    .line 228
    sub-int v11, v7, v11

    .line 229
    .line 230
    aput-object v9, v10, v11

    .line 231
    .line 232
    if-eq v7, v8, :cond_7

    .line 233
    .line 234
    add-int/lit8 v7, v7, 0x1

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_7
    iget v4, v4, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->b:I

    .line 238
    .line 239
    add-int/2addr v3, v4

    .line 240
    add-int/lit8 p2, p2, 0x1

    .line 241
    .line 242
    goto :goto_4

    .line 243
    :cond_8
    iput-object v2, p0, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;->a:Landroidx/collection/MutableObjectIntMap;

    .line 244
    .line 245
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;->a:Landroidx/collection/MutableObjectIntMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/collection/ObjectIntMap;->a(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-ltz p1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/collection/ObjectIntMap;->c:[I

    .line 10
    .line 11
    aget p0, p0, p1

    .line 12
    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, -0x1

    .line 15
    return p0
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;->c:I

    .line 2
    .line 3
    sub-int/2addr p1, v0

    .line 4
    if-ltz p1, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;->b:[Ljava/lang/Object;

    .line 7
    .line 8
    array-length v0, p0

    .line 9
    if-ge p1, v0, :cond_0

    .line 10
    .line 11
    aget-object p0, p0, p1

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method
