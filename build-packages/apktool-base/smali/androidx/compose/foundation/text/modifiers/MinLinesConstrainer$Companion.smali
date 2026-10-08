.class public abstract Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static a(Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->a:Landroidx/compose/ui/unit/LayoutDirection;

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    invoke-static {p2, p1}, Landroidx/compose/ui/text/TextStyleKt;->a(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->b:Landroidx/compose/ui/text/TextStyle;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/TextStyle;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p3}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->c:Landroidx/compose/ui/unit/Density;

    .line 24
    .line 25
    invoke-interface {v1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    cmpg-float v0, v0, v1

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->d:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 34
    .line 35
    if-ne p4, v0, :cond_0

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_0
    sget-object p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->h:Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

    .line 39
    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->a:Landroidx/compose/ui/unit/LayoutDirection;

    .line 43
    .line 44
    if-ne p1, v0, :cond_1

    .line 45
    .line 46
    invoke-static {p2, p1}, Landroidx/compose/ui/text/TextStyleKt;->a(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->b:Landroidx/compose/ui/text/TextStyle;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/TextStyle;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    invoke-interface {p3}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->c:Landroidx/compose/ui/unit/Density;

    .line 63
    .line 64
    invoke-interface {v1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    cmpg-float v0, v0, v1

    .line 69
    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->d:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 73
    .line 74
    if-ne p4, v0, :cond_1

    .line 75
    .line 76
    return-object p0

    .line 77
    :cond_1
    new-instance p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

    .line 78
    .line 79
    invoke-static {p2, p1}, Landroidx/compose/ui/text/TextStyleKt;->a(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-interface {p3}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-interface {p3}, Landroidx/compose/ui/unit/FontScaling;->e0()F

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    invoke-static {v0, p3}, Landroidx/compose/ui/unit/DensityKt;->a(FF)Landroidx/compose/ui/unit/Density;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;-><init>(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    .line 96
    .line 97
    .line 98
    sput-object p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->h:Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

    .line 99
    .line 100
    return-object p0
.end method
