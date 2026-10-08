.class public final Landroidx/compose/material/AnchoredDraggableState$draggableState$1$dragScope$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/gestures/DragScope;


# instance fields
.field public final synthetic a:Landroidx/compose/material/AnchoredDraggableState;


# direct methods
.method public constructor <init>(Landroidx/compose/material/AnchoredDraggableState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material/AnchoredDraggableState$draggableState$1$dragScope$1;->a:Landroidx/compose/material/AnchoredDraggableState;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/compose/material/AnchoredDraggableState$draggableState$1$dragScope$1;->a:Landroidx/compose/material/AnchoredDraggableState;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/material/AnchoredDraggableState;->n:Landroidx/compose/material/AnchoredDraggableState$anchoredDragScope$1;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->e()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->e()F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :goto_0
    add-float/2addr v1, p1

    .line 22
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->d()Landroidx/compose/material/DraggableAnchors;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroidx/compose/material/MapDraggableAnchors;

    .line 27
    .line 28
    iget-object p1, p1, Landroidx/compose/material/MapDraggableAnchors;->a:Ljava/util/Map;

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ljava/lang/Iterable;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/4 v3, 0x0

    .line 48
    if-nez v2, :cond_1

    .line 49
    .line 50
    move-object p1, v3

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/lang/Number;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_2

    .line 67
    .line 68
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Ljava/lang/Number;

    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    :goto_2
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 88
    .line 89
    if-eqz p1, :cond_3

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    goto :goto_3

    .line 96
    :cond_3
    move p1, v2

    .line 97
    :goto_3
    invoke-virtual {p0}, Landroidx/compose/material/AnchoredDraggableState;->d()Landroidx/compose/material/DraggableAnchors;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    check-cast p0, Landroidx/compose/material/MapDraggableAnchors;

    .line 102
    .line 103
    iget-object p0, p0, Landroidx/compose/material/MapDraggableAnchors;->a:Ljava/util/Map;

    .line 104
    .line 105
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    check-cast p0, Ljava/lang/Iterable;

    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-nez v4, :cond_4

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    check-cast v3, Ljava/lang/Number;

    .line 130
    .line 131
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-eqz v4, :cond_5

    .line 140
    .line 141
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    check-cast v4, Ljava/lang/Number;

    .line 146
    .line 147
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    goto :goto_4

    .line 156
    :cond_5
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    :goto_5
    if-eqz v3, :cond_6

    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    :cond_6
    invoke-static {v1, p1, v2}, Lkotlin/ranges/RangesKt;->c(FFF)F

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    invoke-static {v0, p0}, Landroidx/compose/material/AnchoredDragScope;->a(Landroidx/compose/material/AnchoredDraggableState$anchoredDragScope$1;F)V

    .line 171
    .line 172
    .line 173
    return-void
.end method
