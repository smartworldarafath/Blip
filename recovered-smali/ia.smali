.class public final synthetic Lia;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/foundation/pager/PagerState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/pager/PagerState;I)V
    .locals 0

    .line 1
    iput p2, p0, Lia;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lia;->k:Landroidx/compose/foundation/pager/PagerState;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lia;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Lia;->k:Landroidx/compose/foundation/pager/PagerState;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->l()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :pswitch_0
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->q:Landroidx/compose/runtime/MutableIntState;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->k:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/compose/foundation/pager/PagerState;->d:Landroidx/compose/foundation/pager/PagerScrollPosition;

    .line 22
    .line 23
    invoke-interface {v1}, Landroidx/compose/foundation/gestures/ScrollableState;->a()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerScrollPosition;->a()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    move-object v1, v0

    .line 35
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->j()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v3, -0x1

    .line 42
    if-eq v1, v3, :cond_1

    .line 43
    .line 44
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->j()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerScrollPosition;->b()F

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->n:Landroidx/compose/ui/unit/Density;

    .line 60
    .line 61
    sget-object v3, Landroidx/compose/foundation/pager/PagerStateKt;->a:Landroidx/compose/foundation/pager/PagerStateKt$UnitDensity$1;

    .line 62
    .line 63
    const/high16 v3, 0x42600000    # 56.0f

    .line 64
    .line 65
    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->i0(F)F

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->m()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    int-to-float v3, v3

    .line 74
    const/high16 v4, 0x40000000    # 2.0f

    .line 75
    .line 76
    div-float/2addr v3, v4

    .line 77
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->m()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    int-to-float v3, v3

    .line 86
    div-float/2addr v1, v3

    .line 87
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    cmpl-float v0, v0, v1

    .line 92
    .line 93
    if-ltz v0, :cond_3

    .line 94
    .line 95
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->D:Landroidx/compose/runtime/MutableState;

    .line 96
    .line 97
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 98
    .line 99
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Ljava/lang/Boolean;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    iget v1, p0, Landroidx/compose/foundation/pager/PagerState;->e:I

    .line 110
    .line 111
    if-eqz v0, :cond_2

    .line 112
    .line 113
    add-int/lit8 v0, v1, 0x1

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_2
    move v0, v1

    .line 117
    goto :goto_1

    .line 118
    :cond_3
    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerScrollPosition;->a()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/pager/PagerState;->j(I)I

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    goto :goto_0

    .line 127
    :pswitch_1
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->k:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 128
    .line 129
    invoke-interface {v0}, Landroidx/compose/foundation/gestures/ScrollableState;->a()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_4

    .line 134
    .line 135
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->r:Landroidx/compose/runtime/MutableIntState;

    .line 136
    .line 137
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 138
    .line 139
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->j()I

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    goto :goto_2

    .line 144
    :cond_4
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->d:Landroidx/compose/foundation/pager/PagerScrollPosition;

    .line 145
    .line 146
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerScrollPosition;->a()I

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    :goto_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    return-object p0

    .line 155
    :pswitch_2
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->l()I

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :pswitch_3
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->l()I

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
