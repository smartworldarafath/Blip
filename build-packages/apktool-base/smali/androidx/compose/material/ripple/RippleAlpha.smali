.class public final Landroidx/compose/material/ripple/RippleAlpha;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/material/ripple/RippleAlpha;->a:F

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/material/ripple/RippleAlpha;->b:F

    .line 7
    .line 8
    iput p3, p0, Landroidx/compose/material/ripple/RippleAlpha;->c:F

    .line 9
    .line 10
    iput p4, p0, Landroidx/compose/material/ripple/RippleAlpha;->d:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/compose/material/ripple/RippleAlpha;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroidx/compose/material/ripple/RippleAlpha;

    .line 12
    .line 13
    iget v1, p1, Landroidx/compose/material/ripple/RippleAlpha;->a:F

    .line 14
    .line 15
    iget v3, p0, Landroidx/compose/material/ripple/RippleAlpha;->a:F

    .line 16
    .line 17
    cmpg-float v1, v3, v1

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    iget v1, p0, Landroidx/compose/material/ripple/RippleAlpha;->b:F

    .line 22
    .line 23
    iget v3, p1, Landroidx/compose/material/ripple/RippleAlpha;->b:F

    .line 24
    .line 25
    cmpg-float v1, v1, v3

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    iget v1, p0, Landroidx/compose/material/ripple/RippleAlpha;->c:F

    .line 30
    .line 31
    iget v3, p1, Landroidx/compose/material/ripple/RippleAlpha;->c:F

    .line 32
    .line 33
    cmpg-float v1, v1, v3

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    iget p0, p0, Landroidx/compose/material/ripple/RippleAlpha;->d:F

    .line 38
    .line 39
    iget p1, p1, Landroidx/compose/material/ripple/RippleAlpha;->d:F

    .line 40
    .line 41
    cmpg-float p0, p0, p1

    .line 42
    .line 43
    if-nez p0, :cond_2

    .line 44
    .line 45
    return v0

    .line 46
    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/material/ripple/RippleAlpha;->a:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget v2, p0, Landroidx/compose/material/ripple/RippleAlpha;->b:F

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, Lq;->a(FII)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Landroidx/compose/material/ripple/RippleAlpha;->c:F

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Lq;->a(FII)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget p0, p0, Landroidx/compose/material/ripple/RippleAlpha;->d:F

    .line 23
    .line 24
    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    add-int/2addr p0, v0

    .line 29
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ", focusedAlpha="

    .line 2
    .line 3
    const-string v1, ", hoveredAlpha="

    .line 4
    .line 5
    const-string v2, "RippleAlpha(draggedAlpha="

    .line 6
    .line 7
    iget v3, p0, Landroidx/compose/material/ripple/RippleAlpha;->a:F

    .line 8
    .line 9
    iget v4, p0, Landroidx/compose/material/ripple/RippleAlpha;->b:F

    .line 10
    .line 11
    invoke-static {v2, v3, v0, v4, v1}, Lq;->n(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Landroidx/compose/material/ripple/RippleAlpha;->c:F

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", pressedAlpha="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget p0, p0, Landroidx/compose/material/ripple/RippleAlpha;->d:F

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p0, ")"

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method
