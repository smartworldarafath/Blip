.class public final Lokio/internal/ZipFilesKt$buildIndex$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lokio/internal/ZipEntry;

    .line 2
    .line 3
    iget-object p0, p1, Lokio/internal/ZipEntry;->a:Lokio/Path;

    .line 4
    .line 5
    check-cast p2, Lokio/internal/ZipEntry;

    .line 6
    .line 7
    iget-object p1, p2, Lokio/internal/ZipEntry;->a:Lokio/Path;

    .line 8
    .line 9
    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt;->b(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
