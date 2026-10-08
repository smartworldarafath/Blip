.class public final synthetic Lfa;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lfa;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lfa;->k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lfa;->j:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x82

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x4

    .line 8
    const/4 v5, 0x1

    .line 9
    iget-object v6, p0, Lfa;->k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 10
    .line 11
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast p1, Landroidx/compose/animation/AnimatedContentScope;

    .line 17
    .line 18
    move-object v1, p2

    .line 19
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 20
    .line 21
    move-object v4, p3

    .line 22
    check-cast v4, Landroidx/compose/runtime/Composer;

    .line 23
    .line 24
    check-cast p4, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->b()Landroid/os/Bundle;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 p3, 0x0

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    const-string p4, "transferId"

    .line 44
    .line 45
    invoke-virtual {p1, p4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    const-string p3, "isFromShareIntent"

    .line 52
    .line 53
    invoke-virtual {p1, p3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    shr-int/lit8 p1, p2, 0x3

    .line 62
    .line 63
    and-int/lit8 p1, p1, 0xe

    .line 64
    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    iget-object v0, p0, Lfa;->k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 70
    .line 71
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_0
    const-string p0, "Required value was null."

    .line 76
    .line 77
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    move-object v7, p3

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    const-string p0, "missing arguments"

    .line 83
    .line 84
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :goto_1
    return-object v7

    .line 89
    :pswitch_0
    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScope;

    .line 90
    .line 91
    check-cast p2, Ljava/lang/Integer;

    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    check-cast p3, Landroidx/compose/runtime/Composer;

    .line 97
    .line 98
    check-cast p4, Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    and-int/lit8 p2, p0, 0x6

    .line 105
    .line 106
    if-nez p2, :cond_3

    .line 107
    .line 108
    move-object p2, p3

    .line 109
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 110
    .line 111
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    if-eqz p2, :cond_2

    .line 116
    .line 117
    move v3, v4

    .line 118
    :cond_2
    or-int/2addr p0, v3

    .line 119
    :cond_3
    and-int/lit16 p2, p0, 0x83

    .line 120
    .line 121
    if-eq p2, v2, :cond_4

    .line 122
    .line 123
    move v1, v5

    .line 124
    :cond_4
    and-int/lit8 p2, p0, 0x1

    .line 125
    .line 126
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 127
    .line 128
    invoke-virtual {p3, p2, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    if-eqz p2, :cond_5

    .line 133
    .line 134
    and-int/lit8 p0, p0, 0xe

    .line 135
    .line 136
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-virtual {v6, p1, p3, p0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_5
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 145
    .line 146
    .line 147
    :goto_2
    return-object v7

    .line 148
    :pswitch_1
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;

    .line 149
    .line 150
    check-cast p2, Ljava/lang/Integer;

    .line 151
    .line 152
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    check-cast p3, Landroidx/compose/runtime/Composer;

    .line 156
    .line 157
    check-cast p4, Ljava/lang/Integer;

    .line 158
    .line 159
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    and-int/lit8 p2, p0, 0x6

    .line 164
    .line 165
    if-nez p2, :cond_7

    .line 166
    .line 167
    move-object p2, p3

    .line 168
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 169
    .line 170
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    if-eqz p2, :cond_6

    .line 175
    .line 176
    move v3, v4

    .line 177
    :cond_6
    or-int/2addr p0, v3

    .line 178
    :cond_7
    and-int/lit16 p2, p0, 0x83

    .line 179
    .line 180
    if-eq p2, v2, :cond_8

    .line 181
    .line 182
    move v1, v5

    .line 183
    :cond_8
    and-int/lit8 p2, p0, 0x1

    .line 184
    .line 185
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 186
    .line 187
    invoke-virtual {p3, p2, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 188
    .line 189
    .line 190
    move-result p2

    .line 191
    if-eqz p2, :cond_9

    .line 192
    .line 193
    and-int/lit8 p0, p0, 0xe

    .line 194
    .line 195
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-virtual {v6, p1, p3, p0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_9
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 204
    .line 205
    .line 206
    :goto_3
    return-object v7

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
