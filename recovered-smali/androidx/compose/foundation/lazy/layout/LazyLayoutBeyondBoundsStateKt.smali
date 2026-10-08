.class public abstract Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsStateKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;)Landroidx/collection/MutableIntList;
    .locals 10

    .line 1
    iget-object p1, p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;->j:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->c(Landroidx/compose/runtime/snapshots/SnapshotStateList;)Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p1, p1, Landroidx/compose/runtime/snapshots/StateListStateRecord;->c:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 11
    .line 12
    iget-object v0, p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 13
    .line 14
    iget v1, v0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    move v1, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v1, v2

    .line 23
    :goto_0
    if-nez v1, :cond_1

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    sget-object p0, Landroidx/collection/IntListKt;->a:Landroidx/collection/MutableIntList;

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_1
    new-instance v1, Landroidx/collection/MutableIntList;

    .line 35
    .line 36
    invoke-direct {v1}, Landroidx/collection/MutableIntList;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object p2, p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 40
    .line 41
    iget p2, p2, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 42
    .line 43
    if-eqz p2, :cond_9

    .line 44
    .line 45
    iget p2, v0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    const-string v5, "MutableVector is empty."

    .line 49
    .line 50
    if-eqz p2, :cond_8

    .line 51
    .line 52
    iget-object v6, v0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 53
    .line 54
    aget-object v7, v6, v2

    .line 55
    .line 56
    check-cast v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    .line 57
    .line 58
    iget v7, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;->a:I

    .line 59
    .line 60
    move v8, v2

    .line 61
    :goto_1
    if-ge v8, p2, :cond_3

    .line 62
    .line 63
    aget-object v9, v6, v8

    .line 64
    .line 65
    check-cast v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    .line 66
    .line 67
    iget v9, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;->a:I

    .line 68
    .line 69
    if-ge v9, v7, :cond_2

    .line 70
    .line 71
    move v7, v9

    .line 72
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    if-ltz v7, :cond_4

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    const-string p2, "negative minIndex"

    .line 79
    .line 80
    invoke-static {p2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :goto_2
    iget p2, v0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 84
    .line 85
    if-eqz p2, :cond_7

    .line 86
    .line 87
    iget-object v0, v0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 88
    .line 89
    aget-object v4, v0, v2

    .line 90
    .line 91
    check-cast v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    .line 92
    .line 93
    iget v4, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;->b:I

    .line 94
    .line 95
    move v5, v2

    .line 96
    :goto_3
    if-ge v5, p2, :cond_6

    .line 97
    .line 98
    aget-object v6, v0, v5

    .line 99
    .line 100
    check-cast v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    .line 101
    .line 102
    iget v6, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;->b:I

    .line 103
    .line 104
    if-le v6, v4, :cond_5

    .line 105
    .line 106
    move v4, v6

    .line 107
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_6
    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->a()I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    sub-int/2addr p2, v3

    .line 115
    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    move v3, v7

    .line 120
    goto :goto_4

    .line 121
    :cond_7
    invoke-static {v5}, Lfe;->o(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-object v4

    .line 125
    :cond_8
    invoke-static {v5}, Lfe;->o(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-object v4

    .line 129
    :cond_9
    move p2, v2

    .line 130
    :goto_4
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    move v4, v2

    .line 135
    :goto_5
    if-ge v4, v0, :cond_c

    .line 136
    .line 137
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList$PinnedItem;

    .line 142
    .line 143
    move-object v6, v5

    .line 144
    check-cast v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 145
    .line 146
    iget-object v6, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->a:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 149
    .line 150
    iget v5, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->c:I

    .line 151
    .line 152
    invoke-static {v5, p0, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProviderKt;->a(ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;)I

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-gt v3, v5, :cond_a

    .line 157
    .line 158
    if-gt v5, p2, :cond_a

    .line 159
    .line 160
    goto :goto_6

    .line 161
    :cond_a
    if-ltz v5, :cond_b

    .line 162
    .line 163
    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->a()I

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    if-ge v5, v6, :cond_b

    .line 168
    .line 169
    invoke-virtual {v1, v5}, Landroidx/collection/MutableIntList;->b(I)V

    .line 170
    .line 171
    .line 172
    :cond_b
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 173
    .line 174
    goto :goto_5

    .line 175
    :cond_c
    if-gt v3, p2, :cond_d

    .line 176
    .line 177
    :goto_7
    invoke-virtual {v1, v3}, Landroidx/collection/MutableIntList;->b(I)V

    .line 178
    .line 179
    .line 180
    if-eq v3, p2, :cond_d

    .line 181
    .line 182
    add-int/lit8 v3, v3, 0x1

    .line 183
    .line 184
    goto :goto_7

    .line 185
    :cond_d
    iget p0, v1, Landroidx/collection/IntList;->b:I

    .line 186
    .line 187
    if-nez p0, :cond_e

    .line 188
    .line 189
    return-object v1

    .line 190
    :cond_e
    iget-object p1, v1, Landroidx/collection/IntList;->a:[I

    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    invoke-static {p1, v2, p0}, Ljava/util/Arrays;->sort([III)V

    .line 196
    .line 197
    .line 198
    return-object v1
.end method
