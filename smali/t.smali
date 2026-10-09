.class public final synthetic Lt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Z

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZII)V
    .locals 0

    .line 12
    iput p4, p0, Lt;->j:I

    iput-object p1, p0, Lt;->l:Ljava/lang/Object;

    iput-boolean p2, p0, Lt;->k:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/Pair;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lt;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lt;->l:Ljava/lang/Object;

    .line 8
    .line 9
    iput-boolean p2, p0, Lt;->k:Z

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function3;)V
    .locals 1

    .line 13
    const/4 v0, 0x3

    iput v0, p0, Lt;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lt;->k:Z

    iput-object p2, p0, Lt;->l:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lt;->j:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    iget-object v5, p0, Lt;->l:Ljava/lang/Object;

    .line 9
    .line 10
    iget-boolean p0, p0, Lt;->k:Z

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast v5, Lkotlin/jvm/functions/Function3;

    .line 16
    .line 17
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 18
    .line 19
    check-cast p2, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    and-int/lit8 v0, p2, 0x3

    .line 26
    .line 27
    if-eq v0, v1, :cond_0

    .line 28
    .line 29
    move v0, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v0, v3

    .line 32
    :goto_0
    and-int/2addr p2, v2

    .line 33
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 34
    .line 35
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    const p0, -0x64d7dfd1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;)F

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    :goto_1
    invoke-virtual {p1, v3}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    const p0, -0x64d7dced

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 61
    .line 62
    .line 63
    const p0, 0x3ec28f5c    # 0.38f

    .line 64
    .line 65
    .line 66
    invoke-static {p0, p0, p1}, Landroidx/compose/material/ContentAlpha;->a(FFLandroidx/compose/runtime/Composer;)F

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    goto :goto_1

    .line 71
    :goto_2
    sget-object p2, Landroidx/compose/material/ContentAlphaKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 72
    .line 73
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    new-instance p2, Lv3;

    .line 82
    .line 83
    invoke-direct {p2, v5}, Lv3;-><init>(Lkotlin/jvm/functions/Function3;)V

    .line 84
    .line 85
    .line 86
    const v0, -0x125dfbb5

    .line 87
    .line 88
    .line 89
    invoke-static {v0, p2, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    const/16 v0, 0x38

    .line 94
    .line 95
    invoke-static {p0, p2, p1, v0}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 100
    .line 101
    .line 102
    :goto_3
    return-object v4

    .line 103
    :pswitch_0
    check-cast v5, Landroidx/compose/ui/Modifier;

    .line 104
    .line 105
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 106
    .line 107
    check-cast p2, Ljava/lang/Integer;

    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    const/16 p2, 0xd87

    .line 113
    .line 114
    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    invoke-static {v5, p0, p1, p2}, Lnet/blip/android/ui/components/HUDKt;->a(Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;I)V

    .line 119
    .line 120
    .line 121
    return-object v4

    .line 122
    :pswitch_1
    check-cast v5, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 123
    .line 124
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 125
    .line 126
    check-cast p2, Ljava/lang/Integer;

    .line 127
    .line 128
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    invoke-static {v5, p0, p1, p2}, Landroidx/compose/foundation/text/CoreTextFieldKt;->c(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZLandroidx/compose/runtime/Composer;I)V

    .line 136
    .line 137
    .line 138
    return-object v4

    .line 139
    :pswitch_2
    check-cast v5, Lkotlin/Pair;

    .line 140
    .line 141
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 142
    .line 143
    check-cast p2, Ljava/lang/Integer;

    .line 144
    .line 145
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    and-int/lit8 v0, p2, 0x3

    .line 150
    .line 151
    if-eq v0, v1, :cond_3

    .line 152
    .line 153
    move v0, v2

    .line 154
    goto :goto_4

    .line 155
    :cond_3
    move v0, v3

    .line 156
    :goto_4
    and-int/2addr p2, v2

    .line 157
    move-object v10, p1

    .line 158
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 159
    .line 160
    invoke-virtual {v10, p2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-eqz p1, :cond_5

    .line 165
    .line 166
    if-nez v5, :cond_4

    .line 167
    .line 168
    const p0, 0x5110e5e9

    .line 169
    .line 170
    .line 171
    invoke-virtual {v10, p0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 175
    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_4
    const p1, 0x5110e5ea

    .line 179
    .line 180
    .line 181
    invoke-virtual {v10, p1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 182
    .line 183
    .line 184
    iget-object p1, v5, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 185
    .line 186
    move-object v6, p1

    .line 187
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 188
    .line 189
    new-instance p1, Lz;

    .line 190
    .line 191
    invoke-direct {p1, v3, v5, p0}, Lz;-><init>(ILjava/lang/Object;Z)V

    .line 192
    .line 193
    .line 194
    const p0, -0x2dd182b7

    .line 195
    .line 196
    .line 197
    invoke-static {p0, p1, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    const/16 v11, 0x1fe

    .line 202
    .line 203
    const/4 v7, 0x0

    .line 204
    const/4 v8, 0x0

    .line 205
    invoke-static/range {v6 .. v11}, Landroidx/compose/material/ButtonKt;->b(Lkotlin/jvm/functions/Function0;ZLandroidx/compose/material/ButtonColors;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 209
    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_5
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 213
    .line 214
    .line 215
    :goto_5
    return-object v4

    .line 216
    nop

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
