.class public final Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;
.implements Landroidx/compose/ui/node/DrawModifierNode;
.implements Landroidx/compose/ui/node/SemanticsModifierNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;
    }
.end annotation


# instance fields
.field public A:I

.field public B:Z

.field public C:I

.field public D:I

.field public E:Landroidx/compose/ui/graphics/ColorProducer;

.field public F:Ljava/util/HashMap;

.field public G:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

.field public H:Lih;

.field public I:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

.field public x:Ljava/lang/String;

.field public y:Landroidx/compose/ui/text/TextStyle;

.field public z:Landroidx/compose/ui/text/font/FontFamily$Resolver;


# virtual methods
.method public final E0(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->H:Lih;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lih;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lih;-><init>(Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->H:Lih;

    .line 12
    .line 13
    :cond_0
    new-instance v1, Landroidx/compose/ui/text/AnnotatedString;

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->x:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {v1, v2}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 21
    .line 22
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->C:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {p1, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->I:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-boolean v2, v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->c:Z

    .line 36
    .line 37
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->E:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 38
    .line 39
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 40
    .line 41
    const/16 v5, 0x11

    .line 42
    .line 43
    aget-object v5, v4, v5

    .line 44
    .line 45
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Landroidx/compose/ui/text/AnnotatedString;

    .line 56
    .line 57
    iget-object v1, v1, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->b:Ljava/lang/String;

    .line 58
    .line 59
    invoke-direct {v2, v1}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->D:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 63
    .line 64
    const/16 v3, 0x10

    .line 65
    .line 66
    aget-object v3, v4, v3

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    new-instance v1, Lih;

    .line 75
    .line 76
    const/4 v2, 0x1

    .line 77
    invoke-direct {v1, p0, v2}, Lih;-><init>(Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;I)V

    .line 78
    .line 79
    .line 80
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->l:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 81
    .line 82
    new-instance v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 83
    .line 84
    const/4 v4, 0x0

    .line 85
    invoke-direct {v3, v4, v1}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {p1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    new-instance v1, Lih;

    .line 92
    .line 93
    const/4 v2, 0x2

    .line 94
    invoke-direct {v1, p0, v2}, Lih;-><init>(Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;I)V

    .line 95
    .line 96
    .line 97
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->m:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 98
    .line 99
    new-instance v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 100
    .line 101
    invoke-direct {v3, v4, v1}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {p1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    new-instance v1, Lkb;

    .line 108
    .line 109
    const/16 v2, 0x16

    .line 110
    .line 111
    invoke-direct {v1, v2, p0}, Lkb;-><init>(ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsActions;->n:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 115
    .line 116
    new-instance v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 117
    .line 118
    invoke-direct {v2, v4, v1}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 119
    .line 120
    .line 121
    invoke-interface {p1, p0, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/jvm/functions/Function1;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public final N0()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final Y0()Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;
    .locals 8

    .line 1
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->y:Landroidx/compose/ui/text/TextStyle;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->G:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->x:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->z:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 12
    .line 13
    iget v4, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->A:I

    .line 14
    .line 15
    iget-boolean v5, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->B:Z

    .line 16
    .line 17
    iget v6, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->C:I

    .line 18
    .line 19
    iget v7, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->D:I

    .line 20
    .line 21
    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZII)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->G:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 25
    .line 26
    :cond_0
    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->G:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    return-object p0
.end method

.method public final a(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    .line 1
    iget-object p2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->I:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    iget-boolean p3, p2, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->c:Z

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p2, 0x0

    .line 11
    :goto_0
    if-eqz p2, :cond_1

    .line 12
    .line 13
    iget-object p2, p2, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->d:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 14
    .line 15
    if-nez p2, :cond_2

    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->Y0()Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    :cond_2
    invoke-virtual {p2, p1}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->c(Landroidx/compose/ui/unit/Density;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p2, p0}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->d(Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/ParagraphIntrinsics;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-interface {p0}, Landroidx/compose/ui/text/ParagraphIntrinsics;->b()F

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    invoke-static {p0}, Landroidx/compose/foundation/text/TextDelegateKt;->a(F)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public final c(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 1

    .line 1
    iget-object p2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->I:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p2, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->c:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p2, 0x0

    .line 11
    :goto_0
    if-eqz p2, :cond_1

    .line 12
    .line 13
    iget-object p2, p2, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->d:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 14
    .line 15
    if-nez p2, :cond_2

    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->Y0()Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    :cond_2
    invoke-virtual {p2, p1}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->c(Landroidx/compose/ui/unit/Density;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p2, p3, p0}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->a(ILandroidx/compose/ui/unit/LayoutDirection;)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0
.end method

.method public final d(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    .line 1
    iget-object p2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->I:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    iget-boolean p3, p2, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->c:Z

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p2, 0x0

    .line 11
    :goto_0
    if-eqz p2, :cond_1

    .line 12
    .line 13
    iget-object p2, p2, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->d:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 14
    .line 15
    if-nez p2, :cond_2

    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->Y0()Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    :cond_2
    invoke-virtual {p2, p1}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->c(Landroidx/compose/ui/unit/Density;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p2, p0}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->d(Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/ParagraphIntrinsics;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-interface {p0}, Landroidx/compose/ui/text/ParagraphIntrinsics;->c()F

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    invoke-static {p0}, Landroidx/compose/foundation/text/TextDelegateKt;->a(F)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public final e(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 1

    .line 1
    iget-object p2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->I:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p2, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->c:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p2, 0x0

    .line 11
    :goto_0
    if-eqz p2, :cond_1

    .line 12
    .line 13
    iget-object p2, p2, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->d:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 14
    .line 15
    if-nez p2, :cond_2

    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->Y0()Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    :cond_2
    invoke-virtual {p2, p1}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->c(Landroidx/compose/ui/unit/Density;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p2, p3, p0}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->a(ILandroidx/compose/ui/unit/LayoutDirection;)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0
.end method

.method public final h(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_5

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->I:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-boolean v1, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->c:Z

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->d:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 20
    .line 21
    if-nez v0, :cond_3

    .line 22
    .line 23
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->Y0()Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_3
    iget-object v1, v0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->j:Landroidx/compose/ui/text/AndroidParagraph;

    .line 28
    .line 29
    if-eqz v1, :cond_e

    .line 30
    .line 31
    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 32
    .line 33
    iget-object p1, p1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-boolean p1, v0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->k:Z

    .line 40
    .line 41
    if-eqz p1, :cond_4

    .line 42
    .line 43
    iget-wide v3, v0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->l:J

    .line 44
    .line 45
    const/16 v0, 0x20

    .line 46
    .line 47
    shr-long v5, v3, v0

    .line 48
    .line 49
    long-to-int v0, v5

    .line 50
    int-to-float v5, v0

    .line 51
    const-wide v6, 0xffffffffL

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    and-long/2addr v3, v6

    .line 57
    long-to-int v0, v3

    .line 58
    int-to-float v6, v0

    .line 59
    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->g()V

    .line 60
    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    const/4 v7, 0x1

    .line 64
    const/4 v3, 0x0

    .line 65
    invoke-interface/range {v2 .. v7}, Landroidx/compose/ui/graphics/Canvas;->n(FFFFI)V

    .line 66
    .line 67
    .line 68
    :cond_4
    :try_start_0
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->y:Landroidx/compose/ui/text/TextStyle;

    .line 69
    .line 70
    iget-object v3, v0, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 71
    .line 72
    iget-object v4, v3, Landroidx/compose/ui/text/SpanStyle;->m:Landroidx/compose/ui/text/style/TextDecoration;

    .line 73
    .line 74
    if-nez v4, :cond_5

    .line 75
    .line 76
    sget-object v4, Landroidx/compose/ui/text/style/TextDecoration;->b:Landroidx/compose/ui/text/style/TextDecoration;

    .line 77
    .line 78
    :cond_5
    move-object v6, v4

    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    move-object p0, v0

    .line 82
    goto :goto_6

    .line 83
    :goto_1
    iget-object v4, v3, Landroidx/compose/ui/text/SpanStyle;->n:Landroidx/compose/ui/graphics/Shadow;

    .line 84
    .line 85
    if-nez v4, :cond_6

    .line 86
    .line 87
    sget-object v4, Landroidx/compose/ui/graphics/Shadow;->d:Landroidx/compose/ui/graphics/Shadow;

    .line 88
    .line 89
    :cond_6
    move-object v5, v4

    .line 90
    iget-object v4, v3, Landroidx/compose/ui/text/SpanStyle;->o:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 91
    .line 92
    if-nez v4, :cond_7

    .line 93
    .line 94
    sget-object v4, Landroidx/compose/ui/graphics/drawscope/Fill;->a:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 95
    .line 96
    :cond_7
    move-object v7, v4

    .line 97
    iget-object v3, v3, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 98
    .line 99
    invoke-interface {v3}, Landroidx/compose/ui/text/style/TextForegroundStyle;->d()Landroidx/compose/ui/graphics/Brush;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    if-eqz v3, :cond_8

    .line 104
    .line 105
    iget-object p0, v0, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 106
    .line 107
    iget-object p0, p0, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 108
    .line 109
    invoke-interface {p0}, Landroidx/compose/ui/text/style/TextForegroundStyle;->a()F

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/text/AndroidParagraph;->f(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 114
    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_8
    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->E:Landroidx/compose/ui/graphics/ColorProducer;

    .line 118
    .line 119
    if-eqz p0, :cond_9

    .line 120
    .line 121
    invoke-interface {p0}, Landroidx/compose/ui/graphics/ColorProducer;->a()J

    .line 122
    .line 123
    .line 124
    move-result-wide v3

    .line 125
    goto :goto_2

    .line 126
    :cond_9
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->h:J

    .line 127
    .line 128
    :goto_2
    const-wide/16 v8, 0x10

    .line 129
    .line 130
    cmp-long p0, v3, v8

    .line 131
    .line 132
    if-eqz p0, :cond_a

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_a
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle;->b()J

    .line 136
    .line 137
    .line 138
    move-result-wide v3

    .line 139
    cmp-long p0, v3, v8

    .line 140
    .line 141
    if-eqz p0, :cond_b

    .line 142
    .line 143
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle;->b()J

    .line 144
    .line 145
    .line 146
    move-result-wide v3

    .line 147
    goto :goto_3

    .line 148
    :cond_b
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->b:J

    .line 149
    .line 150
    :goto_3
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/text/AndroidParagraph;->e(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .line 152
    .line 153
    :goto_4
    if-eqz p1, :cond_c

    .line 154
    .line 155
    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 156
    .line 157
    .line 158
    :cond_c
    :goto_5
    return-void

    .line 159
    :goto_6
    if-eqz p1, :cond_d

    .line 160
    .line 161
    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 162
    .line 163
    .line 164
    :cond_d
    throw p0

    .line 165
    :cond_e
    iget-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->G:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 166
    .line 167
    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->I:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    .line 168
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string v1, "Internal Error: ParagraphLayoutCache could not provide a Paragraph during the draw phase. Please report this bug on the official Issue Tracker with the following diagnostic information: (layoutCache="

    .line 172
    .line 173
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string p1, ", textSubstitution="

    .line 180
    .line 181
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string p0, ")"

    .line 188
    .line 189
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-static {p0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 197
    .line 198
    .line 199
    invoke-static {}, Lf7;->h()V

    .line 200
    .line 201
    .line 202
    return-void
.end method

.method public final j(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 5

    .line 1
    const-string v0, "TextStringSimpleNode::measure"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->I:Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-boolean v1, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->c:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue;->d:Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->Y0()Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_2
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->c(Landroidx/compose/ui/unit/Density;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, p3, p4, v1}, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->b(JLandroidx/compose/ui/unit/LayoutDirection;)Z

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    iget-object p4, v0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->n:Landroidx/compose/ui/text/ParagraphIntrinsics;

    .line 38
    .line 39
    if-eqz p4, :cond_3

    .line 40
    .line 41
    invoke-interface {p4}, Landroidx/compose/ui/text/ParagraphIntrinsics;->a()Z

    .line 42
    .line 43
    .line 44
    :cond_3
    iget-object p4, v0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->j:Landroidx/compose/ui/text/AndroidParagraph;

    .line 45
    .line 46
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-object p4, p4, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 50
    .line 51
    iget-wide v0, v0, Landroidx/compose/foundation/text/modifiers/ParagraphLayoutCache;->l:J

    .line 52
    .line 53
    if-eqz p3, :cond_5

    .line 54
    .line 55
    const/4 p3, 0x2

    .line 56
    invoke-static {p0, p3}, Landroidx/compose/ui/node/DelegatableNodeKt;->e(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeCoordinator;->l1()V

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->F:Ljava/util/HashMap;

    .line 64
    .line 65
    if-nez v2, :cond_4

    .line 66
    .line 67
    new-instance v2, Ljava/util/HashMap;

    .line 68
    .line 69
    invoke-direct {v2, p3}, Ljava/util/HashMap;-><init>(I)V

    .line 70
    .line 71
    .line 72
    iput-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->F:Ljava/util/HashMap;

    .line 73
    .line 74
    :cond_4
    sget-object p3, Landroidx/compose/ui/layout/AlignmentLineKt;->a:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-virtual {p4, v3}, Landroidx/compose/ui/text/android/TextLayout;->e(I)F

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    const/4 v4, 0x0

    .line 82
    add-float/2addr v3, v4

    .line 83
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-interface {v2, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    sget-object p3, Landroidx/compose/ui/layout/AlignmentLineKt;->b:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 95
    .line 96
    iget v3, p4, Landroidx/compose/ui/text/android/TextLayout;->g:I

    .line 97
    .line 98
    add-int/lit8 v3, v3, -0x1

    .line 99
    .line 100
    invoke-virtual {p4, v3}, Landroidx/compose/ui/text/android/TextLayout;->e(I)F

    .line 101
    .line 102
    .line 103
    move-result p4

    .line 104
    add-float/2addr p4, v4

    .line 105
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    .line 106
    .line 107
    .line 108
    move-result p4

    .line 109
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object p4

    .line 113
    invoke-interface {v2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    :cond_5
    const/16 p3, 0x20

    .line 117
    .line 118
    shr-long p3, v0, p3

    .line 119
    .line 120
    long-to-int p3, p3

    .line 121
    const-wide v2, 0xffffffffL

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    and-long/2addr v0, v2

    .line 127
    long-to-int p4, v0

    .line 128
    invoke-static {p3, p3, p4, p4}, Landroidx/compose/ui/unit/Constraints$Companion;->b(IIII)J

    .line 129
    .line 130
    .line 131
    move-result-wide v0

    .line 132
    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode;->F:Ljava/util/HashMap;

    .line 137
    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    new-instance v0, Lf;

    .line 142
    .line 143
    const/16 v1, 0xe

    .line 144
    .line 145
    invoke-direct {v0, p2, v1}, Lf;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    .line 146
    .line 147
    .line 148
    invoke-interface {p1, p3, p4, p0, v0}, Landroidx/compose/ui/layout/MeasureScope;->B(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 149
    .line 150
    .line 151
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 153
    .line 154
    .line 155
    return-object p0

    .line 156
    :catchall_0
    move-exception p0

    .line 157
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 158
    .line 159
    .line 160
    throw p0
.end method
