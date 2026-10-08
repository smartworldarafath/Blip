.class public final Lcoil3/compose/ConstraintsSizeResolver;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/size/SizeResolver;
.implements Landroidx/compose/ui/layout/LayoutModifier;


# instance fields
.field public b:J

.field public c:Ljava/util/ArrayList;


# virtual methods
.method public final g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p1, Lcoil3/compose/ConstraintsSizeResolver$size$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcoil3/compose/ConstraintsSizeResolver$size$1;

    .line 7
    .line 8
    iget v1, v0, Lcoil3/compose/ConstraintsSizeResolver$size$1;->p:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcoil3/compose/ConstraintsSizeResolver$size$1;->p:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcoil3/compose/ConstraintsSizeResolver$size$1;

    .line 21
    .line 22
    check-cast p1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lcoil3/compose/ConstraintsSizeResolver$size$1;-><init>(Lcoil3/compose/ConstraintsSizeResolver;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p1, v0, Lcoil3/compose/ConstraintsSizeResolver$size$1;->n:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    .line 31
    iget v2, v0, Lcoil3/compose/ConstraintsSizeResolver$size$1;->p:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object v0, v0, Lcoil3/compose/ConstraintsSizeResolver$size$1;->m:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 39
    .line 40
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    return-object p0

    .line 53
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-wide v4, p0, Lcoil3/compose/ConstraintsSizeResolver;->b:J

    .line 57
    .line 58
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Constraints;->k(J)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 65
    .line 66
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 67
    .line 68
    .line 69
    :try_start_1
    iput-object p1, v0, Lcoil3/compose/ConstraintsSizeResolver$size$1;->m:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 70
    .line 71
    iput v3, v0, Lcoil3/compose/ConstraintsSizeResolver$size$1;->p:I

    .line 72
    .line 73
    new-instance v2, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 74
    .line 75
    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-direct {v2, v3, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->v()V

    .line 83
    .line 84
    .line 85
    iput-object v2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 86
    .line 87
    iget-object v0, p0, Lcoil3/compose/ConstraintsSizeResolver;->c:Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->u()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    if-ne v0, v1, :cond_3

    .line 97
    .line 98
    return-object v1

    .line 99
    :cond_3
    move-object v0, p1

    .line 100
    :goto_1
    iget-object p1, p0, Lcoil3/compose/ConstraintsSizeResolver;->c:Ljava/util/ArrayList;

    .line 101
    .line 102
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 103
    .line 104
    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->a(Ljava/util/ArrayList;)Ljava/util/Collection;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :catchall_1
    move-exception v0

    .line 112
    move-object v6, v0

    .line 113
    move-object v0, p1

    .line 114
    move-object p1, v6

    .line 115
    :goto_2
    iget-object p0, p0, Lcoil3/compose/ConstraintsSizeResolver;->c:Ljava/util/ArrayList;

    .line 116
    .line 117
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 118
    .line 119
    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->a(Ljava/util/ArrayList;)Ljava/util/Collection;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    throw p1

    .line 126
    :cond_4
    :goto_3
    iget-wide p0, p0, Lcoil3/compose/ConstraintsSizeResolver;->b:J

    .line 127
    .line 128
    sget v0, Lcoil3/compose/internal/UtilsKt;->b:I

    .line 129
    .line 130
    new-instance v0, Lcoil3/size/Size;

    .line 131
    .line 132
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    sget-object v2, Lcoil3/size/Dimension$Undefined;->a:Lcoil3/size/Dimension$Undefined;

    .line 137
    .line 138
    const v3, 0x7fffffff

    .line 139
    .line 140
    .line 141
    if-eq v1, v3, :cond_5

    .line 142
    .line 143
    invoke-static {v1}, Lcoil3/size/DimensionKt;->a(I)V

    .line 144
    .line 145
    .line 146
    new-instance v4, Lcoil3/size/Dimension$Pixels;

    .line 147
    .line 148
    invoke-direct {v4, v1}, Lcoil3/size/Dimension$Pixels;-><init>(I)V

    .line 149
    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_5
    move-object v4, v2

    .line 153
    :goto_4
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    if-eq p0, v3, :cond_6

    .line 158
    .line 159
    invoke-static {p0}, Lcoil3/size/DimensionKt;->a(I)V

    .line 160
    .line 161
    .line 162
    new-instance v2, Lcoil3/size/Dimension$Pixels;

    .line 163
    .line 164
    invoke-direct {v2, p0}, Lcoil3/size/Dimension$Pixels;-><init>(I)V

    .line 165
    .line 166
    .line 167
    :cond_6
    invoke-direct {v0, v4, v2}, Lcoil3/size/Size;-><init>(Lcoil3/size/Dimension;Lcoil3/size/Dimension;)V

    .line 168
    .line 169
    .line 170
    return-object v0
.end method

.method public final j(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 1

    .line 1
    invoke-virtual {p0, p3, p4}, Lcoil3/compose/ConstraintsSizeResolver;->o(J)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    iget p2, p0, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 9
    .line 10
    iget p3, p0, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 11
    .line 12
    new-instance p4, Lf;

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    invoke-direct {p4, p0, v0}, Lf;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-interface {p1, p2, p3, p0, p4}, Landroidx/compose/ui/layout/MeasureScope;->B(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final o(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcoil3/compose/ConstraintsSizeResolver;->b:J

    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->k(J)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcoil3/compose/ConstraintsSizeResolver;->c:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    new-instance p2, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lcoil3/compose/ConstraintsSizeResolver;->c:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 39
    .line 40
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->g(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method
