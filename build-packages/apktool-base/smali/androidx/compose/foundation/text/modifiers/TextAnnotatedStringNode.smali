.class public final Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;
.implements Landroidx/compose/ui/node/DrawModifierNode;
.implements Landroidx/compose/ui/node/SemanticsModifierNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;
    }
.end annotation


# instance fields
.field public A:Lkotlin/jvm/functions/Function1;

.field public B:I

.field public C:Z

.field public D:I

.field public E:I

.field public F:Ljava/util/List;

.field public G:Lkotlin/jvm/functions/Function1;

.field public H:Landroidx/compose/ui/graphics/ColorProducer;

.field public I:Lkotlin/jvm/functions/Function1;

.field public J:Ljava/util/Map;

.field public K:Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

.field public L:Lrg;

.field public M:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;

.field public x:Landroidx/compose/ui/text/AnnotatedString;

.field public y:Landroidx/compose/ui/text/TextStyle;

.field public z:Landroidx/compose/ui/text/font/FontFamily$Resolver;


# virtual methods
.method public final E0(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->L:Lrg;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lrg;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lrg;-><init>(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->L:Lrg;

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->x:Landroidx/compose/ui/text/AnnotatedString;

    .line 14
    .line 15
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 16
    .line 17
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->C:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 18
    .line 19
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {p1, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->M:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;

    .line 27
    .line 28
    const/16 v2, 0x11

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object v3, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;->b:Landroidx/compose/ui/text/AnnotatedString;

    .line 33
    .line 34
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties;->D:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 35
    .line 36
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 37
    .line 38
    const/16 v6, 0x10

    .line 39
    .line 40
    aget-object v6, v5, v6

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v4, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-boolean v1, v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;->c:Z

    .line 49
    .line 50
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->E:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 51
    .line 52
    aget-object v4, v5, v2

    .line 53
    .line 54
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, v3, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    new-instance v1, Lrg;

    .line 65
    .line 66
    const/4 v3, 0x1

    .line 67
    invoke-direct {v1, p0, v3}, Lrg;-><init>(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;I)V

    .line 68
    .line 69
    .line 70
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsActions;->l:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 71
    .line 72
    new-instance v4, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    invoke-direct {v4, v5, v1}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, v3, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    new-instance v1, Lrg;

    .line 82
    .line 83
    const/4 v3, 0x2

    .line 84
    invoke-direct {v1, p0, v3}, Lrg;-><init>(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;I)V

    .line 85
    .line 86
    .line 87
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsActions;->m:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 88
    .line 89
    new-instance v4, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 90
    .line 91
    invoke-direct {v4, v5, v1}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {p1, v3, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    new-instance v1, Lkb;

    .line 98
    .line 99
    invoke-direct {v1, v2, p0}, Lkb;-><init>(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsActions;->n:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 103
    .line 104
    new-instance v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 105
    .line 106
    invoke-direct {v2, v5, v1}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {p1, p0, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/jvm/functions/Function1;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public final N0()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final Y0()Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->K:Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->x:Landroidx/compose/ui/text/AnnotatedString;

    .line 8
    .line 9
    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->y:Landroidx/compose/ui/text/TextStyle;

    .line 10
    .line 11
    iget-object v4, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->z:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 12
    .line 13
    iget v5, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->B:I

    .line 14
    .line 15
    iget-boolean v6, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->C:Z

    .line 16
    .line 17
    iget v7, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->D:I

    .line 18
    .line 19
    iget v8, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->E:I

    .line 20
    .line 21
    iget-object v9, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->F:Ljava/util/List;

    .line 22
    .line 23
    invoke-direct/range {v1 .. v9}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILjava/util/List;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->K:Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    .line 27
    .line 28
    :cond_0
    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->K:Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    return-object p0
.end method

.method public final Z0(Landroidx/compose/ui/unit/Density;)Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->M:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;->c:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;->d:Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->d(Landroidx/compose/ui/unit/Density;)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->Y0()Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->d(Landroidx/compose/ui/unit/Density;)V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method public final a(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->Z0(Landroidx/compose/ui/unit/Density;)Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->e(Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->b()F

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-static {p0}, Landroidx/compose/foundation/text/TextDelegateKt;->a(F)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final c(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->Z0(Landroidx/compose/ui/unit/Density;)Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p3, p1}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->a(ILandroidx/compose/ui/unit/LayoutDirection;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final d(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->Z0(Landroidx/compose/ui/unit/Density;)Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->e(Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->c()F

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-static {p0}, Landroidx/compose/foundation/text/TextDelegateKt;->a(F)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final e(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->Z0(Landroidx/compose/ui/unit/Density;)Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p3, p1}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->a(ILandroidx/compose/ui/unit/LayoutDirection;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final h(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 13

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_8

    .line 6
    .line 7
    :cond_0
    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->Z0(Landroidx/compose/ui/unit/Density;)Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->n:Landroidx/compose/ui/text/TextLayoutResult;

    .line 20
    .line 21
    if-eqz v1, :cond_14

    .line 22
    .line 23
    move-object v3, v1

    .line 24
    iget-object v1, v3, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 25
    .line 26
    iget-wide v3, v3, Landroidx/compose/ui/text/TextLayoutResult;->c:J

    .line 27
    .line 28
    const/16 v0, 0x20

    .line 29
    .line 30
    shr-long v5, v3, v0

    .line 31
    .line 32
    long-to-int v5, v5

    .line 33
    int-to-float v5, v5

    .line 34
    iget v6, v1, Landroidx/compose/ui/text/MultiParagraph;->d:F

    .line 35
    .line 36
    cmpg-float v5, v5, v6

    .line 37
    .line 38
    const-wide v6, 0xffffffffL

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    const/4 v8, 0x1

    .line 44
    const/4 v9, 0x0

    .line 45
    if-gez v5, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-boolean v5, v1, Landroidx/compose/ui/text/MultiParagraph;->c:Z

    .line 49
    .line 50
    if-nez v5, :cond_2

    .line 51
    .line 52
    and-long v10, v3, v6

    .line 53
    .line 54
    long-to-int v5, v10

    .line 55
    int-to-float v5, v5

    .line 56
    iget v10, v1, Landroidx/compose/ui/text/MultiParagraph;->e:F

    .line 57
    .line 58
    cmpg-float v5, v5, v10

    .line 59
    .line 60
    if-gez v5, :cond_3

    .line 61
    .line 62
    :cond_2
    :goto_0
    iget v5, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->B:I

    .line 63
    .line 64
    const/4 v10, 0x3

    .line 65
    if-ne v5, v10, :cond_4

    .line 66
    .line 67
    :cond_3
    move v10, v9

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    move v10, v8

    .line 70
    :goto_1
    if-eqz v10, :cond_5

    .line 71
    .line 72
    shr-long v11, v3, v0

    .line 73
    .line 74
    long-to-int v5, v11

    .line 75
    int-to-float v5, v5

    .line 76
    and-long/2addr v3, v6

    .line 77
    long-to-int v3, v3

    .line 78
    int-to-float v3, v3

    .line 79
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    int-to-long v4, v4

    .line 84
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    int-to-long v11, v3

    .line 89
    shl-long v3, v4, v0

    .line 90
    .line 91
    and-long v5, v11, v6

    .line 92
    .line 93
    or-long/2addr v3, v5

    .line 94
    const-wide/16 v5, 0x0

    .line 95
    .line 96
    invoke-static {v5, v6, v3, v4}, Landroidx/compose/ui/geometry/RectKt;->a(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->g()V

    .line 101
    .line 102
    .line 103
    invoke-static {v2, v0}, Landroidx/compose/ui/graphics/Canvas;->l(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;)V

    .line 104
    .line 105
    .line 106
    :cond_5
    :try_start_0
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->y:Landroidx/compose/ui/text/TextStyle;

    .line 107
    .line 108
    iget-object v0, v0, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 109
    .line 110
    iget-object v3, v0, Landroidx/compose/ui/text/SpanStyle;->m:Landroidx/compose/ui/text/style/TextDecoration;

    .line 111
    .line 112
    if-nez v3, :cond_6

    .line 113
    .line 114
    sget-object v3, Landroidx/compose/ui/text/style/TextDecoration;->b:Landroidx/compose/ui/text/style/TextDecoration;

    .line 115
    .line 116
    :cond_6
    move-object v6, v3

    .line 117
    goto :goto_2

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    move-object p0, v0

    .line 120
    goto/16 :goto_a

    .line 121
    .line 122
    :goto_2
    iget-object v3, v0, Landroidx/compose/ui/text/SpanStyle;->n:Landroidx/compose/ui/graphics/Shadow;

    .line 123
    .line 124
    if-nez v3, :cond_7

    .line 125
    .line 126
    sget-object v3, Landroidx/compose/ui/graphics/Shadow;->d:Landroidx/compose/ui/graphics/Shadow;

    .line 127
    .line 128
    :cond_7
    move-object v5, v3

    .line 129
    iget-object v3, v0, Landroidx/compose/ui/text/SpanStyle;->o:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 130
    .line 131
    if-nez v3, :cond_8

    .line 132
    .line 133
    sget-object v3, Landroidx/compose/ui/graphics/drawscope/Fill;->a:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 134
    .line 135
    :cond_8
    move-object v7, v3

    .line 136
    iget-object v0, v0, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 137
    .line 138
    invoke-interface {v0}, Landroidx/compose/ui/text/style/TextForegroundStyle;->d()Landroidx/compose/ui/graphics/Brush;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    if-eqz v3, :cond_9

    .line 143
    .line 144
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->y:Landroidx/compose/ui/text/TextStyle;

    .line 145
    .line 146
    iget-object v0, v0, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 147
    .line 148
    iget-object v0, v0, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 149
    .line 150
    invoke-interface {v0}, Landroidx/compose/ui/text/style/TextForegroundStyle;->a()F

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/text/MultiParagraph;->j(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 155
    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_9
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->H:Landroidx/compose/ui/graphics/ColorProducer;

    .line 159
    .line 160
    if-eqz v0, :cond_a

    .line 161
    .line 162
    invoke-interface {v0}, Landroidx/compose/ui/graphics/ColorProducer;->a()J

    .line 163
    .line 164
    .line 165
    move-result-wide v3

    .line 166
    goto :goto_3

    .line 167
    :cond_a
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->h:J

    .line 168
    .line 169
    :goto_3
    const-wide/16 v11, 0x10

    .line 170
    .line 171
    cmp-long v0, v3, v11

    .line 172
    .line 173
    if-eqz v0, :cond_b

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_b
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->y:Landroidx/compose/ui/text/TextStyle;

    .line 177
    .line 178
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle;->b()J

    .line 179
    .line 180
    .line 181
    move-result-wide v3

    .line 182
    cmp-long v0, v3, v11

    .line 183
    .line 184
    if-eqz v0, :cond_c

    .line 185
    .line 186
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->y:Landroidx/compose/ui/text/TextStyle;

    .line 187
    .line 188
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle;->b()J

    .line 189
    .line 190
    .line 191
    move-result-wide v3

    .line 192
    goto :goto_4

    .line 193
    :cond_c
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->b:J

    .line 194
    .line 195
    :goto_4
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/text/MultiParagraph;->i(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    .line 197
    .line 198
    :goto_5
    if-eqz v10, :cond_d

    .line 199
    .line 200
    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 201
    .line 202
    .line 203
    :cond_d
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->M:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;

    .line 204
    .line 205
    if-eqz v0, :cond_e

    .line 206
    .line 207
    iget-boolean v0, v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;->c:Z

    .line 208
    .line 209
    if-ne v0, v8, :cond_e

    .line 210
    .line 211
    move v0, v9

    .line 212
    goto :goto_6

    .line 213
    :cond_e
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->x:Landroidx/compose/ui/text/AnnotatedString;

    .line 214
    .line 215
    invoke-static {v0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNodeKt;->a(Landroidx/compose/ui/text/AnnotatedString;)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    :goto_6
    if-nez v0, :cond_12

    .line 220
    .line 221
    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->F:Ljava/util/List;

    .line 222
    .line 223
    if-eqz p0, :cond_10

    .line 224
    .line 225
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 226
    .line 227
    .line 228
    move-result p0

    .line 229
    if-eqz p0, :cond_f

    .line 230
    .line 231
    goto :goto_7

    .line 232
    :cond_f
    move v8, v9

    .line 233
    :cond_10
    :goto_7
    if-nez v8, :cond_11

    .line 234
    .line 235
    goto :goto_9

    .line 236
    :cond_11
    :goto_8
    return-void

    .line 237
    :cond_12
    :goto_9
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->a()V

    .line 238
    .line 239
    .line 240
    return-void

    .line 241
    :goto_a
    if-eqz v10, :cond_13

    .line 242
    .line 243
    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 244
    .line 245
    .line 246
    :cond_13
    throw p0

    .line 247
    :cond_14
    const-string p0, "Internal Error: MultiParagraphLayoutCache could not provide TextLayoutResult during the draw phase. Please report this bug on the official Issue Tracker with the following diagnostic information: "

    .line 248
    .line 249
    invoke-static {v0, p0}, Lfe;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    return-void
.end method

.method public final j(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 4

    .line 1
    const-string v0, "TextAnnotatedStringNode:measure"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->Z0(Landroidx/compose/ui/unit/Density;)Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, p3, p4, v1}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->c(JLandroidx/compose/ui/unit/LayoutDirection;)Z

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    iget-object p4, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->n:Landroidx/compose/ui/text/TextLayoutResult;

    .line 19
    .line 20
    if-eqz p4, :cond_4

    .line 21
    .line 22
    iget-wide v0, p4, Landroidx/compose/ui/text/TextLayoutResult;->c:J

    .line 23
    .line 24
    iget-object v2, p4, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 25
    .line 26
    iget-object v2, v2, Landroidx/compose/ui/text/MultiParagraph;->a:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->a()Z

    .line 29
    .line 30
    .line 31
    if-eqz p3, :cond_2

    .line 32
    .line 33
    const/4 p3, 0x2

    .line 34
    invoke-static {p0, p3}, Landroidx/compose/ui/node/DelegatableNodeKt;->e(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeCoordinator;->l1()V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->A:Lkotlin/jvm/functions/Function1;

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    invoke-interface {v2, p4}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->J:Ljava/util/Map;

    .line 49
    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 53
    .line 54
    invoke-direct {v2, p3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 55
    .line 56
    .line 57
    :cond_1
    sget-object p3, Landroidx/compose/ui/layout/AlignmentLineKt;->a:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 58
    .line 59
    iget v3, p4, Landroidx/compose/ui/text/TextLayoutResult;->d:F

    .line 60
    .line 61
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-interface {v2, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    sget-object p3, Landroidx/compose/ui/layout/AlignmentLineKt;->b:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 73
    .line 74
    iget v3, p4, Landroidx/compose/ui/text/TextLayoutResult;->e:F

    .line 75
    .line 76
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-interface {v2, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    iput-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->J:Ljava/util/Map;

    .line 88
    .line 89
    :cond_2
    iget-object p3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->G:Lkotlin/jvm/functions/Function1;

    .line 90
    .line 91
    if-eqz p3, :cond_3

    .line 92
    .line 93
    iget-object p4, p4, Landroidx/compose/ui/text/TextLayoutResult;->f:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-interface {p3, p4}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    :cond_3
    const/16 p3, 0x20

    .line 99
    .line 100
    shr-long p3, v0, p3

    .line 101
    .line 102
    long-to-int p3, p3

    .line 103
    const-wide v2, 0xffffffffL

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    and-long/2addr v0, v2

    .line 109
    long-to-int p4, v0

    .line 110
    invoke-static {p3, p3, p4, p4}, Landroidx/compose/ui/unit/Constraints$Companion;->b(IIII)J

    .line 111
    .line 112
    .line 113
    move-result-wide v0

    .line 114
    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->J:Ljava/util/Map;

    .line 119
    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    new-instance v0, Lf;

    .line 124
    .line 125
    const/16 v1, 0xc

    .line 126
    .line 127
    invoke-direct {v0, p2, v1}, Lf;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    .line 128
    .line 129
    .line 130
    invoke-interface {p1, p3, p4, p0, v0}, Landroidx/compose/ui/layout/MeasureScope;->B(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 131
    .line 132
    .line 133
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 135
    .line 136
    .line 137
    return-object p0

    .line 138
    :cond_4
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 139
    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string p2, "Internal Error: MultiParagraphLayoutCache could not provide TextLayoutResult during the draw phase. Please report this bug on the official Issue Tracker with the following diagnostic information: "

    .line 143
    .line 144
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :catchall_0
    move-exception p0

    .line 159
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 160
    .line 161
    .line 162
    throw p0
.end method
