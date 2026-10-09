.class public abstract Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/foundation/text/selection/SelectionLayout;Landroidx/compose/foundation/text/selection/BoundaryFunction;)Landroidx/compose/foundation/text/selection/Selection;
    .locals 4

    .line 1
    check-cast p0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->a()Landroidx/compose/foundation/text/selection/CrossStatus;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->c:Landroidx/compose/foundation/text/selection/SelectableInfo;

    .line 8
    .line 9
    sget-object v1, Landroidx/compose/foundation/text/selection/CrossStatus;->j:Landroidx/compose/foundation/text/selection/CrossStatus;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    move v0, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    new-instance v1, Landroidx/compose/foundation/text/selection/Selection;

    .line 19
    .line 20
    invoke-static {p0, v0, v3, p1}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->c(Landroidx/compose/foundation/text/selection/SelectableInfo;ZZLandroidx/compose/foundation/text/selection/BoundaryFunction;)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {p0, v0, v2, p1}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->c(Landroidx/compose/foundation/text/selection/SelectableInfo;ZZLandroidx/compose/foundation/text/selection/BoundaryFunction;)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v1, v3, p0, v0}, Landroidx/compose/foundation/text/selection/Selection;-><init>(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Z)V

    .line 29
    .line 30
    .line 31
    return-object v1
.end method

.method public static final b(Landroidx/compose/foundation/text/selection/SelectionLayout;Landroidx/compose/foundation/text/selection/SelectableInfo;Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
    .locals 13

    .line 1
    iget v0, p1, Landroidx/compose/foundation/text/selection/SelectableInfo;->b:I

    .line 2
    .line 3
    iget v1, p1, Landroidx/compose/foundation/text/selection/SelectableInfo;->a:I

    .line 4
    .line 5
    move-object v2, p0

    .line 6
    check-cast v2, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;

    .line 7
    .line 8
    iget-boolean v2, v2, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;->a:Z

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    move v5, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v5, v0

    .line 15
    :goto_0
    iget-object v9, p1, Landroidx/compose/foundation/text/selection/SelectableInfo;->d:Landroidx/compose/ui/text/TextLayoutResult;

    .line 16
    .line 17
    iget v10, p1, Landroidx/compose/foundation/text/selection/SelectableInfo;->c:I

    .line 18
    .line 19
    sget-object v11, Lkotlin/LazyThreadSafetyMode;->k:Lkotlin/LazyThreadSafetyMode;

    .line 20
    .line 21
    new-instance v3, Lbf;

    .line 22
    .line 23
    invoke-direct {v3, p1, v5}, Lbf;-><init>(Landroidx/compose/foundation/text/selection/SelectableInfo;I)V

    .line 24
    .line 25
    .line 26
    invoke-static {v11, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    move v6, v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v6, v1

    .line 35
    :goto_1
    new-instance v3, Landroidx/compose/foundation/text/selection/b;

    .line 36
    .line 37
    move-object v7, p0

    .line 38
    move-object v4, p1

    .line 39
    invoke-direct/range {v3 .. v8}, Landroidx/compose/foundation/text/selection/b;-><init>(Landroidx/compose/foundation/text/selection/SelectableInfo;IILandroidx/compose/foundation/text/selection/SelectionLayout;Lkotlin/Lazy;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v11, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-wide/16 v6, 0x1

    .line 47
    .line 48
    iget-wide v11, p2, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->c:J

    .line 49
    .line 50
    cmp-long p1, v6, v11

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_2
    if-ne v5, v10, :cond_3

    .line 62
    .line 63
    return-object p2

    .line 64
    :cond_3
    iget-object p1, v9, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 65
    .line 66
    invoke-virtual {p1, v10}, Landroidx/compose/ui/text/MultiParagraph;->d(I)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    invoke-interface {v8}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Ljava/lang/Number;

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eq v3, p1, :cond_4

    .line 81
    .line 82
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    check-cast p0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 87
    .line 88
    return-object p0

    .line 89
    :cond_4
    iget p1, p2, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->b:I

    .line 90
    .line 91
    invoke-virtual {v9, p1}, Landroidx/compose/ui/text/TextLayoutResult;->i(I)J

    .line 92
    .line 93
    .line 94
    move-result-wide v6

    .line 95
    const/4 p2, -0x1

    .line 96
    if-ne v10, p2, :cond_5

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_5
    if-ne v5, v10, :cond_6

    .line 100
    .line 101
    goto :goto_6

    .line 102
    :cond_6
    if-ge v1, v0, :cond_7

    .line 103
    .line 104
    sget-object p2, Landroidx/compose/foundation/text/selection/CrossStatus;->k:Landroidx/compose/foundation/text/selection/CrossStatus;

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_7
    if-le v1, v0, :cond_8

    .line 108
    .line 109
    sget-object p2, Landroidx/compose/foundation/text/selection/CrossStatus;->j:Landroidx/compose/foundation/text/selection/CrossStatus;

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_8
    sget-object p2, Landroidx/compose/foundation/text/selection/CrossStatus;->l:Landroidx/compose/foundation/text/selection/CrossStatus;

    .line 113
    .line 114
    :goto_2
    sget-object v0, Landroidx/compose/foundation/text/selection/CrossStatus;->j:Landroidx/compose/foundation/text/selection/CrossStatus;

    .line 115
    .line 116
    if-ne p2, v0, :cond_9

    .line 117
    .line 118
    const/4 p2, 0x1

    .line 119
    goto :goto_3

    .line 120
    :cond_9
    const/4 p2, 0x0

    .line 121
    :goto_3
    xor-int/2addr p2, v2

    .line 122
    if-eqz p2, :cond_a

    .line 123
    .line 124
    if-ge v5, v10, :cond_d

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_a
    if-le v5, v10, :cond_d

    .line 128
    .line 129
    :goto_4
    sget p2, Landroidx/compose/ui/text/TextRange;->c:I

    .line 130
    .line 131
    const/16 p2, 0x20

    .line 132
    .line 133
    shr-long v0, v6, p2

    .line 134
    .line 135
    long-to-int p2, v0

    .line 136
    if-eq p1, p2, :cond_c

    .line 137
    .line 138
    const-wide v0, 0xffffffffL

    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    and-long/2addr v0, v6

    .line 144
    long-to-int p2, v0

    .line 145
    if-ne p1, p2, :cond_b

    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_b
    invoke-virtual {v4, v5}, Landroidx/compose/foundation/text/selection/SelectableInfo;->a(I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    return-object p0

    .line 153
    :cond_c
    :goto_5
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    check-cast p0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 158
    .line 159
    return-object p0

    .line 160
    :cond_d
    :goto_6
    invoke-virtual {v4, v5}, Landroidx/compose/foundation/text/selection/SelectableInfo;->a(I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    return-object p0
.end method

.method public static final c(Landroidx/compose/foundation/text/selection/SelectableInfo;ZZLandroidx/compose/foundation/text/selection/BoundaryFunction;)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget v0, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->a:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Landroidx/compose/foundation/text/selection/SelectableInfo;->b:I

    .line 7
    .line 8
    :goto_0
    invoke-interface {p3, p0, v0}, Landroidx/compose/foundation/text/selection/BoundaryFunction;->a(Landroidx/compose/foundation/text/selection/SelectableInfo;I)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    xor-int/2addr p1, p2

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    sget p1, Landroidx/compose/ui/text/TextRange;->c:I

    .line 16
    .line 17
    const/16 p1, 0x20

    .line 18
    .line 19
    shr-long p1, v0, p1

    .line 20
    .line 21
    :goto_1
    long-to-int p1, p1

    .line 22
    goto :goto_2

    .line 23
    :cond_1
    sget p1, Landroidx/compose/ui/text/TextRange;->c:I

    .line 24
    .line 25
    const-wide p1, 0xffffffffL

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    and-long/2addr p1, v0

    .line 31
    goto :goto_1

    .line 32
    :goto_2
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/SelectableInfo;->a(I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static final d(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;Landroidx/compose/foundation/text/selection/SelectableInfo;I)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;
    .locals 2

    .line 1
    iget-object p1, p1, Landroidx/compose/foundation/text/selection/SelectableInfo;->d:Landroidx/compose/ui/text/TextLayoutResult;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->a(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->c:J

    .line 8
    .line 9
    new-instance p0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 10
    .line 11
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;-><init>(Landroidx/compose/ui/text/style/ResolvedTextDirection;IJ)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method
