.class public abstract Landroidx/compose/material/ColorsKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln;

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ln;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Landroidx/compose/runtime/CompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Landroidx/compose/material/ColorsKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 14
    .line 15
    return-void
.end method

.method public static final a(Landroidx/compose/material/Colors;J)J
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->e()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Landroidx/compose/material/Colors;->i:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/material/Colors;->h:Landroidx/compose/runtime/MutableState;

    .line 8
    .line 9
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 16
    .line 17
    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Landroidx/compose/ui/graphics/Color;

    .line 22
    .line 23
    iget-wide p0, p0, Landroidx/compose/ui/graphics/Color;->a:J

    .line 24
    .line 25
    return-wide p0

    .line 26
    :cond_0
    iget-object v0, p0, Landroidx/compose/material/Colors;->b:Landroidx/compose/runtime/MutableState;

    .line 27
    .line 28
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    .line 35
    .line 36
    iget-wide v0, v0, Landroidx/compose/ui/graphics/Color;->a:J

    .line 37
    .line 38
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 45
    .line 46
    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Landroidx/compose/ui/graphics/Color;

    .line 51
    .line 52
    iget-wide p0, p0, Landroidx/compose/ui/graphics/Color;->a:J

    .line 53
    .line 54
    return-wide p0

    .line 55
    :cond_1
    iget-object v0, p0, Landroidx/compose/material/Colors;->c:Landroidx/compose/runtime/MutableState;

    .line 56
    .line 57
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    .line 64
    .line 65
    iget-wide v0, v0, Landroidx/compose/ui/graphics/Color;->a:J

    .line 66
    .line 67
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 74
    .line 75
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    check-cast p0, Landroidx/compose/ui/graphics/Color;

    .line 80
    .line 81
    iget-wide p0, p0, Landroidx/compose/ui/graphics/Color;->a:J

    .line 82
    .line 83
    return-wide p0

    .line 84
    :cond_2
    iget-object v0, p0, Landroidx/compose/material/Colors;->d:Landroidx/compose/runtime/MutableState;

    .line 85
    .line 86
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 87
    .line 88
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    .line 93
    .line 94
    iget-wide v0, v0, Landroidx/compose/ui/graphics/Color;->a:J

    .line 95
    .line 96
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 103
    .line 104
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    check-cast p0, Landroidx/compose/ui/graphics/Color;

    .line 109
    .line 110
    iget-wide p0, p0, Landroidx/compose/ui/graphics/Color;->a:J

    .line 111
    .line 112
    return-wide p0

    .line 113
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->b()J

    .line 114
    .line 115
    .line 116
    move-result-wide v0

    .line 117
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_4

    .line 122
    .line 123
    iget-object p0, p0, Landroidx/compose/material/Colors;->j:Landroidx/compose/runtime/MutableState;

    .line 124
    .line 125
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 126
    .line 127
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    check-cast p0, Landroidx/compose/ui/graphics/Color;

    .line 132
    .line 133
    iget-wide p0, p0, Landroidx/compose/ui/graphics/Color;->a:J

    .line 134
    .line 135
    return-wide p0

    .line 136
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->f()J

    .line 137
    .line 138
    .line 139
    move-result-wide v0

    .line 140
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_5

    .line 145
    .line 146
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->d()J

    .line 147
    .line 148
    .line 149
    move-result-wide p0

    .line 150
    return-wide p0

    .line 151
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->c()J

    .line 152
    .line 153
    .line 154
    move-result-wide v0

    .line 155
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-eqz p1, :cond_6

    .line 160
    .line 161
    iget-object p0, p0, Landroidx/compose/material/Colors;->l:Landroidx/compose/runtime/MutableState;

    .line 162
    .line 163
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 164
    .line 165
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    check-cast p0, Landroidx/compose/ui/graphics/Color;

    .line 170
    .line 171
    iget-wide p0, p0, Landroidx/compose/ui/graphics/Color;->a:J

    .line 172
    .line 173
    return-wide p0

    .line 174
    :cond_6
    sget-wide p0, Landroidx/compose/ui/graphics/Color;->h:J

    .line 175
    .line 176
    return-wide p0
.end method

.method public static final b(JLandroidx/compose/runtime/Composer;)J
    .locals 2

    .line 1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x22cde011

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0, p0, p1}, Landroidx/compose/material/ColorsKt;->a(Landroidx/compose/material/Colors;J)J

    .line 14
    .line 15
    .line 16
    move-result-wide p0

    .line 17
    const-wide/16 v0, 0x10

    .line 18
    .line 19
    cmp-long v0, p0, v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object p0, Landroidx/compose/material/ContentColorKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 25
    .line 26
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Landroidx/compose/ui/graphics/Color;

    .line 31
    .line 32
    iget-wide p0, p0, Landroidx/compose/ui/graphics/Color;->a:J

    .line 33
    .line 34
    :goto_0
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 36
    .line 37
    .line 38
    return-wide p0
.end method
