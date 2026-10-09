.class public final Lcoil3/fetch/FileUriFetcher;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/fetch/Fetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/fetch/FileUriFetcher$Factory;
    }
.end annotation


# instance fields
.field public final a:Lcoil3/Uri;

.field public final b:Lcoil3/request/Options;


# direct methods
.method public constructor <init>(Lcoil3/Uri;Lcoil3/request/Options;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/fetch/FileUriFetcher;->a:Lcoil3/Uri;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/fetch/FileUriFetcher;->b:Lcoil3/request/Options;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object p1, Lokio/Path;->k:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p0, Lcoil3/fetch/FileUriFetcher;->a:Lcoil3/Uri;

    .line 4
    .line 5
    invoke-static {p1}, Lcoil3/UriKt;->b(Lcoil3/Uri;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lokio/Path$Companion;->a(Ljava/lang/String;)Lokio/Path;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v1, Lcoil3/fetch/SourceFetchResult;

    .line 17
    .line 18
    iget-object p0, p0, Lcoil3/fetch/FileUriFetcher;->b:Lcoil3/request/Options;

    .line 19
    .line 20
    iget-object p0, p0, Lcoil3/request/Options;->f:Lokio/FileSystem;

    .line 21
    .line 22
    const/16 v2, 0x1c

    .line 23
    .line 24
    invoke-static {p1, p0, v0, v0, v2}, Lcoil3/decode/ImageSourceKt;->a(Lokio/Path;Lokio/FileSystem;Ljava/lang/String;Lcoil3/disk/DiskCache$Snapshot;I)Lcoil3/decode/FileImageSource;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p1}, Lokio/Path;->b()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/16 v0, 0x2e

    .line 33
    .line 34
    const-string v2, ""

    .line 35
    .line 36
    invoke-static {p1, v0, v2}, Lkotlin/text/StringsKt;->M(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lcoil3/util/MimeTypeMap;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    sget-object v0, Lcoil3/decode/DataSource;->l:Lcoil3/decode/DataSource;

    .line 45
    .line 46
    invoke-direct {v1, p0, p1, v0}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    :cond_0
    const-string p0, "filePath == null"

    .line 51
    .line 52
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v0
.end method
