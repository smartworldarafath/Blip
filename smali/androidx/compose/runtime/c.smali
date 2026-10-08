.class public final synthetic Landroidx/compose/runtime/c;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/runtime/Invalidation;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/Invalidation;

    .line 4
    .line 5
    iget p0, p1, Landroidx/compose/runtime/Invalidation;->b:I

    .line 6
    .line 7
    iget p1, p2, Landroidx/compose/runtime/Invalidation;->b:I

    .line 8
    .line 9
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->b(II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
