.class final Landroidx/datastore/preferences/protobuf/UnsafeUtil$Android32MemoryAccessor;
.super Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/UnsafeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Android32MemoryAccessor"
.end annotation


# virtual methods
.method public final c(JLjava/lang/Object;)Z
    .locals 0

    .line 1
    sget-boolean p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->g:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->b(JLjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-static {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c(JLjava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final d(JLjava/lang/Object;)D
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method public final e(JLjava/lang/Object;)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final j(Ljava/lang/Object;JZ)V
    .locals 0

    .line 1
    sget-boolean p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->g:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    int-to-byte p0, p4

    .line 6
    invoke-static {p1, p2, p3, p0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->k(Ljava/lang/Object;JB)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    int-to-byte p0, p4

    .line 11
    invoke-static {p1, p2, p3, p0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->l(Ljava/lang/Object;JB)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final k(Ljava/lang/Object;JB)V
    .locals 0

    .line 1
    sget-boolean p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->g:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->k(Ljava/lang/Object;JB)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->l(Ljava/lang/Object;JB)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final l(Ljava/lang/Object;JD)V
    .locals 0

    .line 1
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 2
    .line 3
    .line 4
    move-result-wide p4

    .line 5
    invoke-virtual/range {p0 .. p5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->o(Ljava/lang/Object;JJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final m(Ljava/lang/Object;JF)V
    .locals 0

    .line 1
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 2
    .line 3
    .line 4
    move-result p4

    .line 5
    invoke-virtual {p0, p4, p2, p3, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->n(IJLjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final r()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
