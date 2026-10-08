.class public final Landroidx/compose/ui/input/pointer/util/PointerIdArray;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public a:I

.field public b:[J


# virtual methods
.method public final a(J)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->b(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->a:I

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->b:[J

    .line 10
    .line 11
    array-length v2, v1

    .line 12
    if-lt v0, v2, :cond_0

    .line 13
    .line 14
    add-int/lit8 v2, v0, 0x1

    .line 15
    .line 16
    array-length v3, v1

    .line 17
    mul-int/lit8 v3, v3, 0x2

    .line 18
    .line 19
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, p0, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->b:[J

    .line 28
    .line 29
    :cond_0
    aput-wide p1, v1, v0

    .line 30
    .line 31
    iget p1, p0, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->a:I

    .line 32
    .line 33
    if-lt v0, p1, :cond_1

    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    iput v0, p0, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->a:I

    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final b(J)Z
    .locals 5

    .line 1
    iget v0, p0, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->b:[J

    .line 8
    .line 9
    aget-wide v3, v3, v2

    .line 10
    .line 11
    cmp-long v3, v3, p1

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    return v1
.end method

.method public final c(J)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-ge v1, v0, :cond_2

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->b:[J

    .line 7
    .line 8
    aget-wide v2, v2, v1

    .line 9
    .line 10
    cmp-long v2, p1, v2

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    iget p1, p0, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->a:I

    .line 15
    .line 16
    add-int/lit8 p1, p1, -0x1

    .line 17
    .line 18
    :goto_1
    if-ge v1, p1, :cond_0

    .line 19
    .line 20
    iget-object p2, p0, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->b:[J

    .line 21
    .line 22
    add-int/lit8 v0, v1, 0x1

    .line 23
    .line 24
    aget-wide v2, p2, v0

    .line 25
    .line 26
    aput-wide v2, p2, v1

    .line 27
    .line 28
    move v1, v0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget p1, p0, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->a:I

    .line 31
    .line 32
    add-int/lit8 p1, p1, -0x1

    .line 33
    .line 34
    iput p1, p0, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->a:I

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return-void
.end method
