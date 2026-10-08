.class public abstract Landroidx/compose/foundation/layout/SizeKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/foundation/layout/FillElement;

.field public static final b:Landroidx/compose/foundation/layout/FillElement;

.field public static final c:Landroidx/compose/foundation/layout/FillElement;

.field public static final d:Landroidx/compose/foundation/layout/WrapContentElement;

.field public static final e:Landroidx/compose/foundation/layout/WrapContentElement;

.field public static final f:Landroidx/compose/foundation/layout/WrapContentElement;

.field public static final g:Landroidx/compose/foundation/layout/WrapContentElement;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/FillElement;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/foundation/layout/Direction;->k:Landroidx/compose/foundation/layout/Direction;

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/layout/FillElement;-><init>(Landroidx/compose/foundation/layout/Direction;F)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Landroidx/compose/foundation/layout/SizeKt;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/foundation/layout/FillElement;

    .line 13
    .line 14
    sget-object v1, Landroidx/compose/foundation/layout/Direction;->j:Landroidx/compose/foundation/layout/Direction;

    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/layout/FillElement;-><init>(Landroidx/compose/foundation/layout/Direction;F)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Landroidx/compose/foundation/layout/SizeKt;->b:Landroidx/compose/foundation/layout/FillElement;

    .line 20
    .line 21
    new-instance v0, Landroidx/compose/foundation/layout/FillElement;

    .line 22
    .line 23
    sget-object v3, Landroidx/compose/foundation/layout/Direction;->l:Landroidx/compose/foundation/layout/Direction;

    .line 24
    .line 25
    invoke-direct {v0, v3, v2}, Landroidx/compose/foundation/layout/FillElement;-><init>(Landroidx/compose/foundation/layout/Direction;F)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    .line 29
    .line 30
    new-instance v0, Landroidx/compose/foundation/layout/WrapContentElement;

    .line 31
    .line 32
    new-instance v2, Ld;

    .line 33
    .line 34
    const/16 v4, 0x1b

    .line 35
    .line 36
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 37
    .line 38
    invoke-direct {v2, v4, v5}, Ld;-><init>(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v1, v2, v5}, Landroidx/compose/foundation/layout/WrapContentElement;-><init>(Landroidx/compose/foundation/layout/Direction;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Landroidx/compose/foundation/layout/SizeKt;->d:Landroidx/compose/foundation/layout/WrapContentElement;

    .line 45
    .line 46
    new-instance v0, Landroidx/compose/foundation/layout/WrapContentElement;

    .line 47
    .line 48
    new-instance v2, Ld;

    .line 49
    .line 50
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->j:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 51
    .line 52
    invoke-direct {v2, v4, v5}, Ld;-><init>(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v1, v2, v5}, Landroidx/compose/foundation/layout/WrapContentElement;-><init>(Landroidx/compose/foundation/layout/Direction;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    sput-object v0, Landroidx/compose/foundation/layout/SizeKt;->e:Landroidx/compose/foundation/layout/WrapContentElement;

    .line 59
    .line 60
    new-instance v0, Landroidx/compose/foundation/layout/WrapContentElement;

    .line 61
    .line 62
    new-instance v1, Ld;

    .line 63
    .line 64
    const/16 v2, 0x1c

    .line 65
    .line 66
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    .line 67
    .line 68
    invoke-direct {v1, v2, v4}, Ld;-><init>(ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v3, v1, v4}, Landroidx/compose/foundation/layout/WrapContentElement;-><init>(Landroidx/compose/foundation/layout/Direction;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    sput-object v0, Landroidx/compose/foundation/layout/SizeKt;->f:Landroidx/compose/foundation/layout/WrapContentElement;

    .line 75
    .line 76
    new-instance v0, Landroidx/compose/foundation/layout/WrapContentElement;

    .line 77
    .line 78
    new-instance v1, Ld;

    .line 79
    .line 80
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 81
    .line 82
    invoke-direct {v1, v2, v4}, Ld;-><init>(ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, v3, v1, v4}, Landroidx/compose/foundation/layout/WrapContentElement;-><init>(Landroidx/compose/foundation/layout/Direction;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    sput-object v0, Landroidx/compose/foundation/layout/SizeKt;->g:Landroidx/compose/foundation/layout/WrapContentElement;

    .line 89
    .line 90
    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;-><init>(FF)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final b(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    cmpg-float v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->b:Landroidx/compose/foundation/layout/FillElement;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Landroidx/compose/foundation/layout/FillElement;

    .line 11
    .line 12
    sget-object v1, Landroidx/compose/foundation/layout/Direction;->j:Landroidx/compose/foundation/layout/Direction;

    .line 13
    .line 14
    invoke-direct {v0, v1, p1}, Landroidx/compose/foundation/layout/FillElement;-><init>(Landroidx/compose/foundation/layout/Direction;F)V

    .line 15
    .line 16
    .line 17
    move-object p1, v0

    .line 18
    :goto_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static final c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    cmpg-float v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Landroidx/compose/foundation/layout/FillElement;

    .line 11
    .line 12
    sget-object v1, Landroidx/compose/foundation/layout/Direction;->l:Landroidx/compose/foundation/layout/Direction;

    .line 13
    .line 14
    invoke-direct {v0, v1, p1}, Landroidx/compose/foundation/layout/FillElement;-><init>(Landroidx/compose/foundation/layout/Direction;F)V

    .line 15
    .line 16
    .line 17
    move-object p1, v0

    .line 18
    :goto_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static final d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    cmpg-float v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Landroidx/compose/foundation/layout/FillElement;

    .line 11
    .line 12
    sget-object v1, Landroidx/compose/foundation/layout/Direction;->k:Landroidx/compose/foundation/layout/Direction;

    .line 13
    .line 14
    invoke-direct {v0, v1, p1}, Landroidx/compose/foundation/layout/FillElement;-><init>(Landroidx/compose/foundation/layout/Direction;F)V

    .line 15
    .line 16
    .line 17
    move-object p1, v0

    .line 18
    :goto_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static final e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 7

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/SizeElement;

    .line 2
    .line 3
    const/4 v5, 0x1

    .line 4
    const/4 v6, 0x5

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move v4, p1

    .line 8
    move v2, p1

    .line 9
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZI)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static final f(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;
    .locals 7

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/SizeElement;

    .line 2
    .line 3
    const/4 v5, 0x1

    .line 4
    const/4 v6, 0x5

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move v2, p1

    .line 8
    move v4, p2

    .line 9
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZI)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static final g(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 6

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/SizeElement;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    const/high16 v1, 0x41a00000    # 20.0f

    .line 5
    .line 6
    move v2, v1

    .line 7
    move v3, v1

    .line 8
    move v4, v1

    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZ)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static final h(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 6

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/SizeElement;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    const/high16 v1, 0x42080000    # 34.0f

    .line 5
    .line 6
    const/high16 v2, 0x41a00000    # 20.0f

    .line 7
    .line 8
    move v3, v1

    .line 9
    move v4, v2

    .line 10
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZ)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static i(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;
    .locals 8

    .line 1
    and-int/lit8 v0, p5, 0x2

    .line 2
    .line 3
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move v4, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v4, p2

    .line 10
    :goto_0
    and-int/lit8 p2, p5, 0x4

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    move v5, v1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move v5, p3

    .line 17
    :goto_1
    and-int/lit8 p2, p5, 0x8

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    move v6, v1

    .line 22
    goto :goto_2

    .line 23
    :cond_2
    move v6, p4

    .line 24
    :goto_2
    new-instance v2, Landroidx/compose/foundation/layout/SizeElement;

    .line 25
    .line 26
    const/4 v7, 0x0

    .line 27
    move v3, p1

    .line 28
    invoke-direct/range {v2 .. v7}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZ)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p0, v2}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static final j(F)Landroidx/compose/ui/Modifier;
    .locals 7

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/SizeElement;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    const/16 v6, 0xa

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    move v3, p0

    .line 9
    move v1, p0

    .line 10
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZI)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public static final k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 6

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/SizeElement;

    .line 2
    .line 3
    const/4 v5, 0x1

    .line 4
    move v2, p1

    .line 5
    move v3, p1

    .line 6
    move v4, p1

    .line 7
    move v1, p1

    .line 8
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZ)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static final l(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;
    .locals 6

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/SizeElement;

    .line 2
    .line 3
    const/4 v5, 0x1

    .line 4
    move v3, p1

    .line 5
    move v4, p2

    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZ)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static final m(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;
    .locals 6

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/SizeElement;

    .line 2
    .line 3
    const/4 v5, 0x1

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZ)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static final n(F)Landroidx/compose/ui/Modifier;
    .locals 7

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/SizeElement;

    .line 2
    .line 3
    const/4 v5, 0x1

    .line 4
    const/16 v6, 0xa

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    move v3, p0

    .line 9
    move v1, p0

    .line 10
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZI)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public static o()Landroidx/compose/ui/Modifier;
    .locals 7

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/SizeElement;

    .line 2
    .line 3
    const/4 v5, 0x1

    .line 4
    const/16 v6, 0xa

    .line 5
    .line 6
    const/high16 v1, 0x43100000    # 144.0f

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZI)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public static p(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 5

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 2
    .line 3
    invoke-static {v0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->d:Landroidx/compose/foundation/layout/WrapContentElement;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->j:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->e:Landroidx/compose/foundation/layout/WrapContentElement;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v1, Landroidx/compose/foundation/layout/WrapContentElement;

    .line 24
    .line 25
    sget-object v2, Landroidx/compose/foundation/layout/Direction;->j:Landroidx/compose/foundation/layout/Direction;

    .line 26
    .line 27
    new-instance v3, Ld;

    .line 28
    .line 29
    const/16 v4, 0x1b

    .line 30
    .line 31
    invoke-direct {v3, v4, v0}, Ld;-><init>(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v2, v3, v0}, Landroidx/compose/foundation/layout/WrapContentElement;-><init>(Landroidx/compose/foundation/layout/Direction;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    move-object v0, v1

    .line 38
    :goto_0
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public static q(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 5

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    .line 2
    .line 3
    invoke-virtual {v0, v0}, Landroidx/compose/ui/BiasAlignment;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->f:Landroidx/compose/foundation/layout/WrapContentElement;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/compose/ui/BiasAlignment;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->g:Landroidx/compose/foundation/layout/WrapContentElement;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v1, Landroidx/compose/foundation/layout/WrapContentElement;

    .line 24
    .line 25
    sget-object v2, Landroidx/compose/foundation/layout/Direction;->l:Landroidx/compose/foundation/layout/Direction;

    .line 26
    .line 27
    new-instance v3, Ld;

    .line 28
    .line 29
    const/16 v4, 0x1c

    .line 30
    .line 31
    invoke-direct {v3, v4, v0}, Ld;-><init>(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v2, v3, v0}, Landroidx/compose/foundation/layout/WrapContentElement;-><init>(Landroidx/compose/foundation/layout/Direction;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    move-object v0, v1

    .line 38
    :goto_0
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
