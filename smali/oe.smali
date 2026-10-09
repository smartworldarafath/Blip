.class public final synthetic Loe;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:Landroidx/compose/material/MutableWindowInsets;

.field public final synthetic k:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic l:J

.field public final synthetic m:J

.field public final synthetic n:I

.field public final synthetic o:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic p:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic q:Lkotlin/jvm/functions/Function2;

.field public final synthetic r:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic s:Lkotlin/jvm/functions/Function3;

.field public final synthetic t:Landroidx/compose/material/ScaffoldState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material/MutableWindowInsets;Landroidx/compose/foundation/layout/WindowInsets;JJILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function3;Landroidx/compose/material/ScaffoldState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Loe;->j:Landroidx/compose/material/MutableWindowInsets;

    .line 5
    .line 6
    iput-object p2, p0, Loe;->k:Landroidx/compose/foundation/layout/WindowInsets;

    .line 7
    .line 8
    iput-wide p3, p0, Loe;->l:J

    .line 9
    .line 10
    iput-wide p5, p0, Loe;->m:J

    .line 11
    .line 12
    iput p7, p0, Loe;->n:I

    .line 13
    .line 14
    iput-object p8, p0, Loe;->o:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 15
    .line 16
    iput-object p9, p0, Loe;->p:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 17
    .line 18
    iput-object p10, p0, Loe;->q:Lkotlin/jvm/functions/Function2;

    .line 19
    .line 20
    iput-object p11, p0, Loe;->r:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 21
    .line 22
    iput-object p12, p0, Loe;->s:Lkotlin/jvm/functions/Function3;

    .line 23
    .line 24
    iput-object p13, p0, Loe;->t:Landroidx/compose/material/ScaffoldState;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    sget-object v0, Landroidx/compose/material/ScaffoldKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 12
    .line 13
    and-int/lit8 v0, p3, 0x6

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    move-object v0, p2

    .line 18
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x2

    .line 29
    :goto_0
    or-int/2addr p3, v0

    .line 30
    :cond_1
    and-int/lit8 v0, p3, 0x13

    .line 31
    .line 32
    const/16 v1, 0x12

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    if-eq v0, v1, :cond_2

    .line 36
    .line 37
    move v0, v2

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const/4 v0, 0x0

    .line 40
    :goto_1
    and-int/2addr p3, v2

    .line 41
    move-object v9, p2

    .line 42
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 43
    .line 44
    invoke-virtual {v9, p3, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_5

    .line 49
    .line 50
    iget-object v5, p0, Loe;->j:Landroidx/compose/material/MutableWindowInsets;

    .line 51
    .line 52
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    iget-object p3, p0, Loe;->k:Landroidx/compose/foundation/layout/WindowInsets;

    .line 57
    .line 58
    invoke-virtual {v9, p3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    or-int/2addr p2, v0

    .line 63
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-nez p2, :cond_3

    .line 68
    .line 69
    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 70
    .line 71
    if-ne v0, p2, :cond_4

    .line 72
    .line 73
    :cond_3
    new-instance v0, Lec;

    .line 74
    .line 75
    const/16 p2, 0xa

    .line 76
    .line 77
    invoke-direct {v0, p2, v5, p3}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 84
    .line 85
    invoke-static {p1, v0}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    new-instance v0, Lqe;

    .line 90
    .line 91
    iget v1, p0, Loe;->n:I

    .line 92
    .line 93
    iget-object v2, p0, Loe;->o:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 94
    .line 95
    iget-object v3, p0, Loe;->p:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 96
    .line 97
    iget-object v4, p0, Loe;->q:Lkotlin/jvm/functions/Function2;

    .line 98
    .line 99
    iget-object v6, p0, Loe;->r:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 100
    .line 101
    iget-object v7, p0, Loe;->s:Lkotlin/jvm/functions/Function3;

    .line 102
    .line 103
    iget-object v8, p0, Loe;->t:Landroidx/compose/material/ScaffoldState;

    .line 104
    .line 105
    invoke-direct/range {v0 .. v8}, Lqe;-><init>(ILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/material/MutableWindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function3;Landroidx/compose/material/ScaffoldState;)V

    .line 106
    .line 107
    .line 108
    const p2, -0x68f9b348

    .line 109
    .line 110
    .line 111
    invoke-static {p2, v0, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    const/high16 v10, 0x180000

    .line 116
    .line 117
    const/16 v11, 0x32

    .line 118
    .line 119
    const/4 v2, 0x0

    .line 120
    iget-wide v3, p0, Loe;->l:J

    .line 121
    .line 122
    iget-wide v5, p0, Loe;->m:J

    .line 123
    .line 124
    const/4 v7, 0x0

    .line 125
    move-object v1, p1

    .line 126
    invoke-static/range {v1 .. v11}, Landroidx/compose/material/SurfaceKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_5
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 131
    .line 132
    .line 133
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 134
    .line 135
    return-object p0
.end method
