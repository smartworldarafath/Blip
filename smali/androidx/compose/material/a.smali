.class public final synthetic Landroidx/compose/material/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/material/a;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material/a;->k:Ljava/lang/Object;

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
    .locals 4

    .line 1
    iget v0, p0, Landroidx/compose/material/a;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/material/a;->k:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroidx/compose/material/FadeInFadeOutState;

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/material/FadeInFadeOutState;->a:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/compose/material/FadeInFadeOutState;->b:Ljava/util/ArrayList;

    .line 20
    .line 21
    new-instance v2, Landroidx/compose/material/j;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->J(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Landroidx/compose/material/FadeInFadeOutState;->c:Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->a:Landroidx/compose/runtime/RecomposeScopeOwner;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-interface {v0, p0, v1}, Landroidx/compose/runtime/RecomposeScopeOwner;->c(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 38
    .line 39
    .line 40
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_0
    check-cast p0, Landroidx/compose/material/AnchoredDraggableState;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->d()Landroidx/compose/material/DraggableAnchors;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Landroidx/compose/material/AnchoredDraggableState;->g:Landroidx/compose/runtime/MutableState;

    .line 50
    .line 51
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v0, Landroidx/compose/material/MapDraggableAnchors;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroidx/compose/material/MapDraggableAnchors;->c(Ljava/lang/Object;)F

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->d()Landroidx/compose/material/DraggableAnchors;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-object v2, p0, Landroidx/compose/material/AnchoredDraggableState;->i:Landroidx/compose/runtime/State;

    .line 68
    .line 69
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v1, Landroidx/compose/material/MapDraggableAnchors;

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroidx/compose/material/MapDraggableAnchors;->c(Ljava/lang/Object;)F

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    sub-float/2addr v1, v0

    .line 80
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-nez v3, :cond_2

    .line 89
    .line 90
    const v3, 0x358637bd    # 1.0E-6f

    .line 91
    .line 92
    .line 93
    cmpl-float v2, v2, v3

    .line 94
    .line 95
    if-lez v2, :cond_2

    .line 96
    .line 97
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->f()F

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    sub-float/2addr p0, v0

    .line 102
    div-float/2addr p0, v1

    .line 103
    cmpg-float v0, p0, v3

    .line 104
    .line 105
    if-gez v0, :cond_1

    .line 106
    .line 107
    const/4 p0, 0x0

    .line 108
    goto :goto_0

    .line 109
    :cond_1
    const v0, 0x3f7fffef    # 0.999999f

    .line 110
    .line 111
    .line 112
    cmpl-float v0, p0, v0

    .line 113
    .line 114
    if-lez v0, :cond_3

    .line 115
    .line 116
    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    .line 117
    .line 118
    :cond_3
    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    :pswitch_1
    check-cast p0, Landroidx/compose/material/AnchoredDraggableState;

    .line 124
    .line 125
    iget-object v0, p0, Landroidx/compose/material/AnchoredDraggableState;->l:Landroidx/compose/runtime/MutableState;

    .line 126
    .line 127
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 128
    .line 129
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    if-nez v0, :cond_8

    .line 134
    .line 135
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->e()F

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    iget-object v2, p0, Landroidx/compose/material/AnchoredDraggableState;->g:Landroidx/compose/runtime/MutableState;

    .line 144
    .line 145
    if-nez v1, :cond_7

    .line 146
    .line 147
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 148
    .line 149
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->d()Landroidx/compose/material/DraggableAnchors;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    check-cast p0, Landroidx/compose/material/MapDraggableAnchors;

    .line 158
    .line 159
    invoke-virtual {p0, v1}, Landroidx/compose/material/MapDraggableAnchors;->c(Ljava/lang/Object;)F

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    cmpg-float v3, v2, v0

    .line 164
    .line 165
    if-nez v3, :cond_4

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_4
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_5

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_5
    if-gez v3, :cond_6

    .line 176
    .line 177
    const/4 v2, 0x1

    .line 178
    invoke-virtual {p0, v0, v2}, Landroidx/compose/material/MapDraggableAnchors;->b(FZ)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    if-nez v0, :cond_8

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_6
    const/4 v2, 0x0

    .line 186
    invoke-virtual {p0, v0, v2}, Landroidx/compose/material/MapDraggableAnchors;->b(FZ)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    if-nez v0, :cond_8

    .line 191
    .line 192
    :goto_1
    move-object v0, v1

    .line 193
    goto :goto_2

    .line 194
    :cond_7
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 195
    .line 196
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    :cond_8
    :goto_2
    return-object v0

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
