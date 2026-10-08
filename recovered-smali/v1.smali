.class public final synthetic Lv1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lv1;->j:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget p0, p0, Lv1;->j:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lio/sentry/android/core/anr/AggregatedStackTrace;

    .line 7
    .line 8
    check-cast p2, Lio/sentry/android/core/anr/AggregatedStackTrace;

    .line 9
    .line 10
    sget-object p0, Lio/sentry/android/core/anr/AnrCulpritIdentifier;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    iget p0, p1, Lio/sentry/android/core/anr/AggregatedStackTrace;->f:I

    .line 13
    .line 14
    int-to-float p0, p0

    .line 15
    iget v0, p1, Lio/sentry/android/core/anr/AggregatedStackTrace;->b:F

    .line 16
    .line 17
    const/high16 v1, 0x3f800000    # 1.0f

    .line 18
    .line 19
    add-float/2addr v0, v1

    .line 20
    mul-float/2addr v0, p0

    .line 21
    iget p0, p1, Lio/sentry/android/core/anr/AggregatedStackTrace;->a:I

    .line 22
    .line 23
    int-to-float p0, p0

    .line 24
    mul-float/2addr v0, p0

    .line 25
    iget p0, p2, Lio/sentry/android/core/anr/AggregatedStackTrace;->f:I

    .line 26
    .line 27
    int-to-float p0, p0

    .line 28
    iget p1, p2, Lio/sentry/android/core/anr/AggregatedStackTrace;->b:F

    .line 29
    .line 30
    add-float/2addr p1, v1

    .line 31
    mul-float/2addr p1, p0

    .line 32
    iget p0, p2, Lio/sentry/android/core/anr/AggregatedStackTrace;->a:I

    .line 33
    .line 34
    int-to-float p0, p0

    .line 35
    mul-float/2addr p1, p0

    .line 36
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0

    .line 41
    :pswitch_0
    check-cast p1, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    .line 42
    .line 43
    check-cast p2, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    .line 44
    .line 45
    iget-wide p0, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;->b:J

    .line 46
    .line 47
    iget-wide v0, p2, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;->b:J

    .line 48
    .line 49
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    return p0

    .line 54
    :pswitch_1
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsSortKt;->b:Lcf;

    .line 55
    .line 56
    invoke-virtual {p0, p1, p2}, Lcf;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Ljava/lang/Number;

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    return p0

    .line 67
    :pswitch_2
    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 68
    .line 69
    check-cast p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 70
    .line 71
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    invoke-interface {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->b(II)I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    return p0

    .line 84
    :pswitch_3
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    .line 85
    .line 86
    check-cast p2, Landroidx/compose/ui/node/LayoutNode;

    .line 87
    .line 88
    iget-object p0, p1, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 89
    .line 90
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 91
    .line 92
    iget p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->O:F

    .line 93
    .line 94
    iget-object v0, p2, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 95
    .line 96
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 97
    .line 98
    iget v0, v0, Landroidx/compose/ui/node/MeasurePassDelegate;->O:F

    .line 99
    .line 100
    cmpg-float v1, p0, v0

    .line 101
    .line 102
    if-nez v1, :cond_0

    .line 103
    .line 104
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->x()I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->x()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->b(II)I

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    goto :goto_0

    .line 117
    :cond_0
    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    :goto_0
    return p0

    .line 122
    :pswitch_4
    check-cast p1, Lkotlin/ranges/IntRange;

    .line 123
    .line 124
    check-cast p2, Lkotlin/ranges/IntRange;

    .line 125
    .line 126
    iget p0, p1, Lkotlin/ranges/IntProgression;->k:I

    .line 127
    .line 128
    iget p1, p1, Lkotlin/ranges/IntProgression;->j:I

    .line 129
    .line 130
    sub-int/2addr p0, p1

    .line 131
    iget p1, p2, Lkotlin/ranges/IntProgression;->k:I

    .line 132
    .line 133
    iget p2, p2, Lkotlin/ranges/IntProgression;->j:I

    .line 134
    .line 135
    sub-int/2addr p1, p2

    .line 136
    sub-int/2addr p0, p1

    .line 137
    return p0

    .line 138
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    .line 139
    .line 140
    check-cast p2, Ljava/lang/Integer;

    .line 141
    .line 142
    sget-object p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->k:Lcom/google/common/collect/Ordering;

    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    const/4 v0, -0x1

    .line 149
    if-ne p0, v0, :cond_1

    .line 150
    .line 151
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    if-ne p0, v0, :cond_3

    .line 156
    .line 157
    const/4 v0, 0x0

    .line 158
    goto :goto_1

    .line 159
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    if-ne p0, v0, :cond_2

    .line 164
    .line 165
    const/4 v0, 0x1

    .line 166
    goto :goto_1

    .line 167
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    sub-int v0, p0, p1

    .line 176
    .line 177
    :cond_3
    :goto_1
    return v0

    .line 178
    :pswitch_6
    check-cast p1, Landroidx/media3/common/Format;

    .line 179
    .line 180
    check-cast p2, Landroidx/media3/common/Format;

    .line 181
    .line 182
    iget p0, p2, Landroidx/media3/common/Format;->k:I

    .line 183
    .line 184
    iget p1, p1, Landroidx/media3/common/Format;->k:I

    .line 185
    .line 186
    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    .line 187
    .line 188
    .line 189
    move-result p0

    .line 190
    return p0

    .line 191
    :pswitch_7
    check-cast p1, Ljava/lang/Integer;

    .line 192
    .line 193
    check-cast p2, Ljava/lang/Integer;

    .line 194
    .line 195
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 196
    .line 197
    .line 198
    move-result p0

    .line 199
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    .line 200
    .line 201
    .line 202
    move-result p0

    .line 203
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    sub-int/2addr p0, p1

    .line 212
    return p0

    .line 213
    :pswitch_8
    check-cast p1, Landroidx/compose/foundation/lazy/layout/PriorityTask;

    .line 214
    .line 215
    check-cast p2, Landroidx/compose/foundation/lazy/layout/PriorityTask;

    .line 216
    .line 217
    iget p0, p2, Landroidx/compose/foundation/lazy/layout/PriorityTask;->a:I

    .line 218
    .line 219
    iget p1, p1, Landroidx/compose/foundation/lazy/layout/PriorityTask;->a:I

    .line 220
    .line 221
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->b(II)I

    .line 222
    .line 223
    .line 224
    move-result p0

    .line 225
    return p0

    .line 226
    nop

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
