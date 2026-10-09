.class final Landroidx/compose/foundation/text/HeightInLinesNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/LayoutModifierNode;
.implements Landroidx/compose/ui/node/ObserverModifierNode;


# instance fields
.field public A:Z

.field public B:I

.field public C:I

.field public D:Landroidx/compose/ui/text/TextStyle;

.field public E:Landroidx/compose/ui/text/font/TypefaceResult;

.field public x:Landroidx/compose/ui/text/TextStyle;

.field public y:I

.field public z:I


# virtual methods
.method public final N0()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final Q0()V
    .locals 6

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->k:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->x:Landroidx/compose/ui/text/TextStyle;

    .line 10
    .line 11
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v2, v2, Landroidx/compose/ui/node/LayoutNode;->I:Landroidx/compose/ui/unit/LayoutDirection;

    .line 16
    .line 17
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextStyleKt;->a(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->D:Landroidx/compose/ui/text/TextStyle;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/compose/foundation/text/HeightInLinesNode;->a1()Landroidx/compose/ui/text/TextStyle;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v1, v1, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 28
    .line 29
    iget-object v1, v1, Landroidx/compose/ui/text/SpanStyle;->f:Landroidx/compose/ui/text/font/FontFamily;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/compose/foundation/text/HeightInLinesNode;->a1()Landroidx/compose/ui/text/TextStyle;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v2, v2, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 36
    .line 37
    iget-object v2, v2, Landroidx/compose/ui/text/SpanStyle;->c:Landroidx/compose/ui/text/font/FontWeight;

    .line 38
    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    sget-object v2, Landroidx/compose/ui/text/font/FontWeight;->q:Landroidx/compose/ui/text/font/FontWeight;

    .line 42
    .line 43
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/HeightInLinesNode;->a1()Landroidx/compose/ui/text/TextStyle;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iget-object v3, v3, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 48
    .line 49
    iget-object v3, v3, Landroidx/compose/ui/text/SpanStyle;->d:Landroidx/compose/ui/text/font/FontStyle;

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    iget v3, v3, Landroidx/compose/ui/text/font/FontStyle;->a:I

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move v3, v4

    .line 58
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/HeightInLinesNode;->a1()Landroidx/compose/ui/text/TextStyle;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    iget-object v5, v5, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 63
    .line 64
    iget-object v5, v5, Landroidx/compose/ui/text/SpanStyle;->e:Landroidx/compose/ui/text/font/FontSynthesis;

    .line 65
    .line 66
    if-eqz v5, :cond_2

    .line 67
    .line 68
    iget v5, v5, Landroidx/compose/ui/text/font/FontSynthesis;->a:I

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const v5, 0xffff

    .line 72
    .line 73
    .line 74
    :goto_1
    check-cast v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 75
    .line 76
    invoke-virtual {v0, v1, v2, v3, v5}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->b(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroidx/compose/ui/text/font/TypefaceResult;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->E:Landroidx/compose/ui/text/font/TypefaceResult;

    .line 81
    .line 82
    new-instance v0, Landroidx/compose/foundation/text/e;

    .line 83
    .line 84
    invoke-direct {v0, p0, v4}, Landroidx/compose/foundation/text/e;-><init>(Landroidx/compose/foundation/text/HeightInLinesNode;I)V

    .line 85
    .line 86
    .line 87
    invoke-static {p0, v0}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->a(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 88
    .line 89
    .line 90
    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->A:Z

    .line 92
    .line 93
    return-void
.end method

.method public final R0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->D:Landroidx/compose/ui/text/TextStyle;

    .line 3
    .line 4
    iput-object v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->E:Landroidx/compose/ui/text/font/TypefaceResult;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->A:Z

    .line 8
    .line 9
    return-void
.end method

.method public final W()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->x:Landroidx/compose/ui/text/TextStyle;

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->I:Landroidx/compose/ui/unit/LayoutDirection;

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextStyleKt;->a(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->D:Landroidx/compose/ui/text/TextStyle;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->A:Z

    .line 17
    .line 18
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->a(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final Y0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {p2, p1, p3, v0, v1}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->b(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZ)Landroidx/compose/ui/text/AndroidParagraph;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/android/TextLayout;->i(I)F

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    invoke-virtual {p1, v1}, Landroidx/compose/ui/text/android/TextLayout;->i(I)F

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    const/4 v0, 0x2

    .line 19
    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/android/TextLayout;->i(I)F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->y:I

    .line 24
    .line 25
    invoke-static {p2, p3, p1, v0, v1}, Landroidx/compose/foundation/text/HeightInLinesModifierKt;->a(FFFII)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->B:I

    .line 30
    .line 31
    iget v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->z:I

    .line 32
    .line 33
    const v1, 0x7fffffff

    .line 34
    .line 35
    .line 36
    invoke-static {p2, p3, p1, v0, v1}, Landroidx/compose/foundation/text/HeightInLinesModifierKt;->a(FFFII)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->C:I

    .line 41
    .line 42
    return-void
.end method

.method public final Z0(Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->A:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/foundation/text/HeightInLinesNode;->a1()Landroidx/compose/ui/text/TextStyle;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->k:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 11
    .line 12
    invoke-static {p0, v2}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0, v2}, Landroidx/compose/foundation/text/HeightInLinesNode;->Y0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    .line 19
    .line 20
    .line 21
    iput-boolean v1, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->A:Z

    .line 22
    .line 23
    :cond_0
    iget p1, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->B:I

    .line 24
    .line 25
    if-gez p1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v1, p1

    .line 29
    :goto_0
    iput v1, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->B:I

    .line 30
    .line 31
    iget p1, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->C:I

    .line 32
    .line 33
    const/4 v0, -0x1

    .line 34
    if-eq p1, v0, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const p1, 0x7fffffff

    .line 38
    .line 39
    .line 40
    :goto_1
    iput p1, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->C:I

    .line 41
    .line 42
    return-void
.end method

.method public final a1()Landroidx/compose/ui/text/TextStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->D:Landroidx/compose/ui/text/TextStyle;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "Resolved style is not set."

    .line 7
    .line 8
    invoke-static {p0}, Lq;->C(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    throw p0
.end method

.method public final c(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/HeightInLinesNode;->Z0(Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->B:I

    .line 5
    .line 6
    iget v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->C:I

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    return p1

    .line 11
    :cond_0
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->V(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget p2, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->B:I

    .line 16
    .line 17
    iget p0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->C:I

    .line 18
    .line 19
    if-ge p1, p2, :cond_1

    .line 20
    .line 21
    move p1, p2

    .line 22
    :cond_1
    if-le p1, p0, :cond_2

    .line 23
    .line 24
    return p0

    .line 25
    :cond_2
    return p1
.end method

.method public final e(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/HeightInLinesNode;->Z0(Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->B:I

    .line 5
    .line 6
    iget v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->C:I

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->b(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget p2, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->B:I

    .line 16
    .line 17
    iget p0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->C:I

    .line 18
    .line 19
    if-ge p1, p2, :cond_1

    .line 20
    .line 21
    move p1, p2

    .line 22
    :cond_1
    if-le p1, p0, :cond_2

    .line 23
    .line 24
    return p0

    .line 25
    :cond_2
    return p1
.end method

.method public final g()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->A:Z

    .line 3
    .line 4
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->a(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final j(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->A:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/foundation/text/HeightInLinesNode;->a1()Landroidx/compose/ui/text/TextStyle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->k:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 10
    .line 11
    invoke-static {p0, v1}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 16
    .line 17
    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/foundation/text/HeightInLinesNode;->Y0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->A:Z

    .line 22
    .line 23
    :cond_0
    iget v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->B:I

    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-static {v0, v2, v3}, Lkotlin/ranges/RangesKt;->d(III)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    :goto_0
    move v6, v0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    goto :goto_0

    .line 47
    :goto_1
    iget p0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->C:I

    .line 48
    .line 49
    if-eq p0, v1, :cond_2

    .line 50
    .line 51
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-static {p0, v0, v1}, Lkotlin/ranges/RangesKt;->d(III)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    :goto_2
    move v7, p0

    .line 64
    goto :goto_3

    .line 65
    :cond_2
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    goto :goto_2

    .line 70
    :goto_3
    const/4 v5, 0x0

    .line 71
    const/4 v8, 0x3

    .line 72
    const/4 v4, 0x0

    .line 73
    move-wide v2, p3

    .line 74
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    .line 75
    .line 76
    .line 77
    move-result-wide p3

    .line 78
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    iget p2, p0, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 83
    .line 84
    iget p3, p0, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 85
    .line 86
    new-instance p4, Lf;

    .line 87
    .line 88
    const/4 v0, 0x5

    .line 89
    invoke-direct {p4, p0, v0}, Lf;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-interface {p1, p2, p3, p0, p4}, Landroidx/compose/ui/layout/MeasureScope;->B(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0
.end method

.method public final s0()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->E:Landroidx/compose/ui/text/font/TypefaceResult;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/foundation/text/e;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/text/e;-><init>(Landroidx/compose/foundation/text/HeightInLinesNode;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->a(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->A:Z

    .line 16
    .line 17
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->a(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
