.class public abstract Landroidx/compose/runtime/tooling/ComposeStackTraceBuilderKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Ljava/lang/Integer;ILjava/lang/Integer;)Ljava/util/List;
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->w:Z

    .line 2
    .line 3
    if-nez v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->p()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_9

    .line 10
    .line 11
    new-instance v0, Landroidx/compose/runtime/tooling/WriterTraceBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget p3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->v:I

    .line 24
    .line 25
    if-gez p3, :cond_1

    .line 26
    .line 27
    iget-object p3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->b:[I

    .line 28
    .line 29
    invoke-virtual {p0, p3, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->E([II)I

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    :cond_1
    :goto_0
    if-nez p1, :cond_3

    .line 34
    .line 35
    iget p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->i:I

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->b:[I

    .line 38
    .line 39
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->r(I)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {p0, v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->N([II)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    sub-int/2addr p1, v1

    .line 48
    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->s:Landroidx/collection/MutableIntObjectMap;

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    invoke-virtual {v1, p2}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Landroidx/collection/MutableObjectList;

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    iget v1, v1, Landroidx/collection/ObjectList;->b:I

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const/4 v1, 0x0

    .line 64
    :goto_1
    add-int/2addr p1, v1

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :cond_3
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->r(I)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    mul-int/lit8 v1, v1, 0x5

    .line 74
    .line 75
    iget-object v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->b:[I

    .line 76
    .line 77
    array-length v3, v2

    .line 78
    if-ge v1, v3, :cond_4

    .line 79
    .line 80
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->s(I)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    goto :goto_3

    .line 85
    :cond_4
    if-ltz p3, :cond_5

    .line 86
    .line 87
    invoke-virtual {p0, v2, p3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->E([II)I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    goto :goto_2

    .line 92
    :cond_5
    move p2, p3

    .line 93
    :goto_2
    invoke-virtual {p0, p3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->s(I)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    goto :goto_5

    .line 98
    :goto_3
    if-ltz p2, :cond_8

    .line 99
    .line 100
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->r(I)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->b:[I

    .line 105
    .line 106
    mul-int/lit8 v2, v2, 0x5

    .line 107
    .line 108
    add-int/lit8 v2, v2, 0x1

    .line 109
    .line 110
    aget v2, v3, v2

    .line 111
    .line 112
    const/high16 v3, 0x20000000

    .line 113
    .line 114
    and-int/2addr v2, v3

    .line 115
    if-eqz v2, :cond_6

    .line 116
    .line 117
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->t(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    goto :goto_4

    .line 122
    :cond_6
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 123
    .line 124
    :goto_4
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->O(I)Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    .line 125
    .line 126
    .line 127
    const/4 v3, 0x0

    .line 128
    invoke-virtual {v0, v1, v2, v3, p1}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->c(ILjava/lang/Object;Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->b(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    if-ltz p3, :cond_7

    .line 136
    .line 137
    iget-object p2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->b:[I

    .line 138
    .line 139
    invoke-virtual {p0, p2, p3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->E([II)I

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    invoke-virtual {p0, p3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->s(I)I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    :goto_5
    move v4, p3

    .line 148
    move p3, p2

    .line 149
    move p2, v4

    .line 150
    goto :goto_3

    .line 151
    :cond_7
    move p2, p3

    .line 152
    goto :goto_3

    .line 153
    :cond_8
    iget-object p0, v0, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->a:Ljava/util/ArrayList;

    .line 154
    .line 155
    return-object p0

    .line 156
    :cond_9
    sget-object p0, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 157
    .line 158
    return-object p0
.end method

.method public static final b(Landroidx/compose/runtime/composer/gapbuffer/SlotReader;Landroidx/compose/runtime/CompositionContext;II)Ljava/lang/Integer;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    .line 2
    .line 3
    :goto_0
    const/4 v1, 0x0

    .line 4
    if-ge p2, p3, :cond_6

    .line 5
    .line 6
    mul-int/lit8 v2, p2, 0x5

    .line 7
    .line 8
    add-int/lit8 v2, v2, 0x3

    .line 9
    .line 10
    aget v2, v0, v2

    .line 11
    .line 12
    add-int/2addr v2, p2

    .line 13
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->j(I)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_4

    .line 18
    .line 19
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i(I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/16 v4, 0xce

    .line 24
    .line 25
    if-ne v3, v4, :cond_4

    .line 26
    .line 27
    invoke-virtual {p0, v0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->p([II)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    sget-object v4, Landroidx/compose/runtime/ComposerKt;->e:Landroidx/compose/runtime/OpaqueKey;

    .line 32
    .line 33
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_4

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-virtual {p0, p2, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->h(II)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    instance-of v4, v3, Landroidx/compose/runtime/RememberObserverHolder;

    .line 45
    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    check-cast v3, Landroidx/compose/runtime/RememberObserverHolder;

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    move-object v3, v1

    .line 52
    :goto_1
    if-eqz v3, :cond_1

    .line 53
    .line 54
    check-cast v3, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 55
    .line 56
    iget-object v3, v3, Landroidx/compose/runtime/GapRememberObserverHolder;->a:Landroidx/compose/runtime/RememberObserver;

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_1
    move-object v3, v1

    .line 60
    :goto_2
    instance-of v4, v3, Landroidx/compose/runtime/GapComposer$CompositionContextHolder;

    .line 61
    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    move-object v1, v3

    .line 65
    check-cast v1, Landroidx/compose/runtime/GapComposer$CompositionContextHolder;

    .line 66
    .line 67
    :cond_2
    if-eqz v1, :cond_4

    .line 68
    .line 69
    iget-object v1, v1, Landroidx/compose/runtime/GapComposer$CompositionContextHolder;->j:Landroidx/compose/runtime/GapComposer$CompositionContextImpl;

    .line 70
    .line 71
    if-eq v1, p1, :cond_3

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :cond_4
    :goto_3
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->d(I)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    add-int/lit8 p2, p2, 0x1

    .line 86
    .line 87
    invoke-static {p0, p1, p2, v2}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilderKt;->b(Landroidx/compose/runtime/composer/gapbuffer/SlotReader;Landroidx/compose/runtime/CompositionContext;II)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    if-eqz p2, :cond_5

    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0

    .line 102
    :cond_5
    move p2, v2

    .line 103
    goto :goto_0

    .line 104
    :cond_6
    return-object v1
.end method

.method public static final c(Landroidx/compose/runtime/composer/gapbuffer/SlotReader;ILjava/lang/Integer;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    new-instance v0, Landroidx/compose/runtime/tooling/ReaderTraceBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/runtime/tooling/ReaderTraceBuilder;-><init>(Landroidx/compose/runtime/composer/gapbuffer/SlotReader;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->a(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    :goto_0
    if-ltz p1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->k(I)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    .line 23
    .line 24
    invoke-virtual {p0, v3, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->p([II)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 30
    .line 31
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->i(I)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    iget-object v5, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->a:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 36
    .line 37
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->g(I)Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, v4, v3, p1, p2}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->c(ILjava/lang/Object;Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    if-ltz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->a(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->q(I)I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    move-object v6, v2

    .line 55
    move-object v2, p1

    .line 56
    move p1, v1

    .line 57
    move v1, p2

    .line 58
    move-object p2, v6

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move p1, v1

    .line 61
    move-object p2, v2

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object p0, v0, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->a:Ljava/util/ArrayList;

    .line 64
    .line 65
    return-object p0
.end method
