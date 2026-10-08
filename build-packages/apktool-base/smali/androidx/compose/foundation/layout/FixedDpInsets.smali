.class final Landroidx/compose/foundation/layout/FixedDpInsets;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/layout/WindowInsets;


# virtual methods
.method public final a(Landroidx/compose/ui/unit/Density;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final b(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final c(Landroidx/compose/ui/unit/Density;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final d(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of p0, p1, Landroidx/compose/foundation/layout/FixedDpInsets;

    .line 5
    .line 6
    if-nez p0, :cond_1

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_1
    const/4 p0, 0x0

    .line 10
    invoke-static {p0, p0}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    invoke-static {p0, p0}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    invoke-static {p0, p0}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    invoke-static {p0, p0}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    :goto_0
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/16 v1, 0x1f

    .line 7
    .line 8
    mul-int/2addr v0, v1

    .line 9
    invoke-static {p0, v0, v1}, Lq;->a(FII)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {p0, v0, v1}, Lq;->a(FII)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    add-int/2addr p0, v0

    .line 22
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->c(F)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->c(F)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->c(F)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->c(F)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v3, ", top="

    .line 19
    .line 20
    const-string v4, ", right="

    .line 21
    .line 22
    const-string v5, "Insets(left="

    .line 23
    .line 24
    invoke-static {v5, v0, v3, v1, v4}, Lq;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", bottom="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p0, ")"

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method
