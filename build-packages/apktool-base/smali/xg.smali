.class public final synthetic Lxg;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Float;

.field public final synthetic l:Lkotlin/jvm/functions/Function2;

.field public final synthetic m:J


# direct methods
.method public synthetic constructor <init>(JLjava/lang/Float;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lxg;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-wide p1, p0, Lxg;->m:J

    .line 8
    .line 9
    iput-object p3, p0, Lxg;->k:Ljava/lang/Float;

    .line 10
    .line 11
    iput-object p4, p0, Lxg;->l:Lkotlin/jvm/functions/Function2;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Float;Lkotlin/jvm/functions/Function2;J)V
    .locals 1

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lxg;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxg;->k:Ljava/lang/Float;

    iput-object p2, p0, Lxg;->l:Lkotlin/jvm/functions/Function2;

    iput-wide p3, p0, Lxg;->m:J

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lxg;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    iget-wide v5, p0, Lxg;->m:J

    .line 9
    .line 10
    iget-object v7, p0, Lxg;->l:Lkotlin/jvm/functions/Function2;

    .line 11
    .line 12
    iget-object p0, p0, Lxg;->k:Ljava/lang/Float;

    .line 13
    .line 14
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 15
    .line 16
    check-cast p2, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    packed-switch v0, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    and-int/lit8 v0, p2, 0x3

    .line 26
    .line 27
    if-eq v0, v2, :cond_0

    .line 28
    .line 29
    move v0, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v0, v3

    .line 32
    :goto_0
    and-int/2addr p2, v4

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
    const/16 p2, 0x8

    .line 42
    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    const v0, 0x58812ba4

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 49
    .line 50
    .line 51
    sget-object v0, Landroidx/compose/material/ContentAlphaKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {p0, v7, p1, p2}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v3}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const p0, 0x5884373e

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 68
    .line 69
    .line 70
    sget-object p0, Landroidx/compose/material/ContentAlphaKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 71
    .line 72
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->d(J)F

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {p0, v7, p1, p2}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v3}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 92
    .line 93
    .line 94
    :goto_1
    return-object v1

    .line 95
    :pswitch_0
    and-int/lit8 v0, p2, 0x3

    .line 96
    .line 97
    if-eq v0, v2, :cond_3

    .line 98
    .line 99
    move v3, v4

    .line 100
    :cond_3
    and-int/2addr p2, v4

    .line 101
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 102
    .line 103
    invoke-virtual {p1, p2, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    if-eqz p2, :cond_4

    .line 108
    .line 109
    sget-object p2, Landroidx/compose/material/ContentColorKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 110
    .line 111
    new-instance v0, Landroidx/compose/ui/graphics/Color;

    .line 112
    .line 113
    invoke-direct {v0, v5, v6}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    new-instance v0, Lxg;

    .line 121
    .line 122
    invoke-direct {v0, p0, v7, v5, v6}, Lxg;-><init>(Ljava/lang/Float;Lkotlin/jvm/functions/Function2;J)V

    .line 123
    .line 124
    .line 125
    const p0, -0x60d57365

    .line 126
    .line 127
    .line 128
    invoke-static {p0, v0, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    const/16 v0, 0x38

    .line 133
    .line 134
    invoke-static {p2, p0, p1, v0}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 139
    .line 140
    .line 141
    :goto_2
    return-object v1

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
