.class public abstract Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNodeKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/text/AnnotatedString;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->j:Ljava/util/List;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    move v3, v1

    .line 17
    :goto_0
    if-ge v3, v2, :cond_1

    .line 18
    .line 19
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 24
    .line 25
    iget-object v5, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    .line 26
    .line 27
    instance-of v5, v5, Landroidx/compose/ui/text/LinkAnnotation;

    .line 28
    .line 29
    if-eqz v5, :cond_0

    .line 30
    .line 31
    iget v5, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    .line 32
    .line 33
    iget v4, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    .line 34
    .line 35
    invoke-static {v1, v0, v5, v4}, Landroidx/compose/ui/text/AnnotatedStringKt;->b(IIII)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return v1
.end method
