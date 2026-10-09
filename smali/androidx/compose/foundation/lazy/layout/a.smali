.class public final synthetic Landroidx/compose/foundation/lazy/layout/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/lazy/layout/a;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/a;->k:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/lazy/layout/a;->l:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/layout/a;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v4, p0, Landroidx/compose/foundation/lazy/layout/a;->l:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/a;->k:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 16
    .line 17
    check-cast v4, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    .line 18
    .line 19
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 20
    .line 21
    check-cast p2, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    and-int/lit8 v0, p2, 0x3

    .line 28
    .line 29
    if-eq v0, v2, :cond_0

    .line 30
    .line 31
    move v0, v3

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v0, v5

    .line 34
    :goto_0
    and-int/2addr p2, v3

    .line 35
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 36
    .line 37
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p0, v4, p1, p2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 52
    .line 53
    .line 54
    :goto_1
    return-object v1

    .line 55
    :pswitch_0
    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 56
    .line 57
    check-cast v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;

    .line 58
    .line 59
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 60
    .line 61
    check-cast p2, Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    and-int/lit8 v0, p2, 0x3

    .line 68
    .line 69
    if-eq v0, v2, :cond_2

    .line 70
    .line 71
    move v0, v3

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    move v0, v5

    .line 74
    :goto_2
    and-int/2addr p2, v3

    .line 75
    move-object v10, p1

    .line 76
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 77
    .line 78
    invoke-virtual {v10, p2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_8

    .line 83
    .line 84
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->b:Lo1;

    .line 85
    .line 86
    invoke-virtual {p1}, Lo1;->a()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    move-object v6, p1

    .line 91
    check-cast v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    .line 92
    .line 93
    iget p1, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;->c:I

    .line 94
    .line 95
    iget-object p2, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;->a:Ljava/lang/Object;

    .line 96
    .line 97
    invoke-interface {v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->a()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    const/4 v2, -0x1

    .line 102
    if-ge p1, v0, :cond_4

    .line 103
    .line 104
    invoke-interface {v6, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->b(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_3

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_3
    :goto_3
    move v8, p1

    .line 116
    goto :goto_5

    .line 117
    :cond_4
    :goto_4
    invoke-interface {v6, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->d(Ljava/lang/Object;)I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eq p1, v2, :cond_3

    .line 122
    .line 123
    iput p1, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;->c:I

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :goto_5
    if-eq v8, v2, :cond_5

    .line 127
    .line 128
    const p1, -0x6339ef97

    .line 129
    .line 130
    .line 131
    invoke-virtual {v10, p1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 132
    .line 133
    .line 134
    iget-object v7, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->a:Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 135
    .line 136
    iget-object v9, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;->a:Ljava/lang/Object;

    .line 137
    .line 138
    const/4 v11, 0x0

    .line 139
    invoke-static/range {v6 .. v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactoryKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;ILjava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 143
    .line 144
    .line 145
    goto :goto_6

    .line 146
    :cond_5
    const p0, -0x633657e2

    .line 147
    .line 148
    .line 149
    invoke-virtual {v10, p0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 153
    .line 154
    .line 155
    :goto_6
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    if-nez p0, :cond_6

    .line 164
    .line 165
    sget-object p0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 166
    .line 167
    if-ne p1, p0, :cond_7

    .line 168
    .line 169
    :cond_6
    new-instance p1, Landroidx/compose/foundation/lazy/layout/b;

    .line 170
    .line 171
    invoke-direct {p1, v5, v4}, Landroidx/compose/foundation/lazy/layout/b;-><init>(ILjava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v10, p1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    :cond_7
    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 178
    .line 179
    invoke-static {p2, p1, v10}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 180
    .line 181
    .line 182
    goto :goto_7

    .line 183
    :cond_8
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 184
    .line 185
    .line 186
    :goto_7
    return-object v1

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
