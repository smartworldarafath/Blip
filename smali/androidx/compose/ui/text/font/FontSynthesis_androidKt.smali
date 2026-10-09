.class public abstract Landroidx/compose/ui/text/font/FontSynthesis_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(ILjava/lang/Object;Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Landroid/graphics/Typeface;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    and-int/lit8 v0, p0, 0x1

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    move-object v0, p2

    .line 13
    check-cast v0, Landroidx/compose/ui/text/font/ResourceFont;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/compose/ui/text/font/ResourceFont;->a:Landroidx/compose/ui/text/font/FontWeight;

    .line 16
    .line 17
    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->m:Landroidx/compose/ui/text/font/FontWeight;

    .line 24
    .line 25
    invoke-virtual {p3, v0}, Landroidx/compose/ui/text/font/FontWeight;->a(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-ltz v3, :cond_1

    .line 30
    .line 31
    move-object v3, p2

    .line 32
    check-cast v3, Landroidx/compose/ui/text/font/ResourceFont;

    .line 33
    .line 34
    iget-object v3, v3, Landroidx/compose/ui/text/font/ResourceFont;->a:Landroidx/compose/ui/text/font/FontWeight;

    .line 35
    .line 36
    iget v3, v3, Landroidx/compose/ui/text/font/FontWeight;->j:I

    .line 37
    .line 38
    iget v0, v0, Landroidx/compose/ui/text/font/FontWeight;->j:I

    .line 39
    .line 40
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(II)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-gez v0, :cond_1

    .line 45
    .line 46
    move v0, v2

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move v0, v1

    .line 49
    :goto_0
    and-int/lit8 p0, p0, 0x2

    .line 50
    .line 51
    if-eqz p0, :cond_3

    .line 52
    .line 53
    move-object p0, p2

    .line 54
    check-cast p0, Landroidx/compose/ui/text/font/ResourceFont;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    if-nez p4, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move p0, v2

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    :goto_1
    move p0, v1

    .line 65
    :goto_2
    if-nez p0, :cond_4

    .line 66
    .line 67
    if-nez v0, :cond_4

    .line 68
    .line 69
    return-object p1

    .line 70
    :cond_4
    if-eqz v0, :cond_5

    .line 71
    .line 72
    iget p3, p3, Landroidx/compose/ui/text/font/FontWeight;->j:I

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_5
    move-object p3, p2

    .line 76
    check-cast p3, Landroidx/compose/ui/text/font/ResourceFont;

    .line 77
    .line 78
    iget-object p3, p3, Landroidx/compose/ui/text/font/ResourceFont;->a:Landroidx/compose/ui/text/font/FontWeight;

    .line 79
    .line 80
    iget p3, p3, Landroidx/compose/ui/text/font/FontWeight;->j:I

    .line 81
    .line 82
    :goto_3
    if-eqz p0, :cond_6

    .line 83
    .line 84
    if-ne p4, v2, :cond_7

    .line 85
    .line 86
    move v1, v2

    .line 87
    goto :goto_4

    .line 88
    :cond_6
    check-cast p2, Landroidx/compose/ui/text/font/ResourceFont;

    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    :cond_7
    :goto_4
    check-cast p1, Landroid/graphics/Typeface;

    .line 94
    .line 95
    invoke-static {p1, p3, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0
.end method
