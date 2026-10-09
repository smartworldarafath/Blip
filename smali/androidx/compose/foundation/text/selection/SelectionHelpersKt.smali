.class public abstract Landroidx/compose/foundation/text/selection/SelectionHelpersKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/text/TextLayoutResult;I)Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->a:Landroidx/compose/ui/text/TextLayoutInput;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/compose/ui/text/TextLayoutInput;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 6
    .line 7
    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1, p1}, Landroidx/compose/ui/text/MultiParagraph;->d(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    add-int/lit8 v3, p1, -0x1

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Landroidx/compose/ui/text/MultiParagraph;->d(I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eq v2, v3, :cond_2

    .line 29
    .line 30
    :cond_1
    iget-object v0, v0, Landroidx/compose/ui/text/TextLayoutInput;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 31
    .line 32
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eq p1, v0, :cond_3

    .line 39
    .line 40
    add-int/lit8 v0, p1, 0x1

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/MultiParagraph;->d(I)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eq v2, v0, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/TextLayoutResult;->a(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/TextLayoutResult;->g(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method
