.class public final synthetic Lokio/internal/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lokio/internal/ZipEntry;

    .line 2
    .line 3
    sget-object p0, Lokio/internal/ResourceFileSystem;->o:Lokio/Path;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object p0, Lokio/internal/ResourceFileSystem;->o:Lokio/Path;

    .line 9
    .line 10
    iget-object p0, p1, Lokio/internal/ZipEntry;->a:Lokio/Path;

    .line 11
    .line 12
    invoke-static {p0}, Lokio/internal/ResourceFileSystem$Companion;->a(Lokio/Path;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method
