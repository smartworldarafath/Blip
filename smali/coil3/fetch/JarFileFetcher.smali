.class public final Lcoil3/fetch/JarFileFetcher;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/fetch/Fetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/fetch/JarFileFetcher$Factory;
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
    iput-object p1, p0, Lcoil3/fetch/JarFileFetcher;->a:Lcoil3/Uri;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/fetch/JarFileFetcher;->b:Lcoil3/request/Options;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object p1, p0, Lcoil3/fetch/JarFileFetcher;->a:Lcoil3/Uri;

    .line 2
    .line 3
    iget-object v0, p1, Lcoil3/Uri;->e:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    move-object v0, v1

    .line 10
    :cond_0
    const/16 v2, 0x21

    .line 11
    .line 12
    const/4 v3, 0x6

    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-static {v0, v2, v4, v3}, Lkotlin/text/StringsKt;->q(Ljava/lang/CharSequence;CII)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, -0x1

    .line 19
    const/4 v5, 0x0

    .line 20
    if-eq v2, v3, :cond_1

    .line 21
    .line 22
    sget-object p1, Lokio/Path;->k:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lokio/Path$Companion;->a(Ljava/lang/String;)Lokio/Path;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lokio/Path$Companion;->a(Ljava/lang/String;)Lokio/Path;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v2, Lcoil3/fetch/SourceFetchResult;

    .line 47
    .line 48
    iget-object p0, p0, Lcoil3/fetch/JarFileFetcher;->b:Lcoil3/request/Options;

    .line 49
    .line 50
    iget-object p0, p0, Lcoil3/request/Options;->f:Lokio/FileSystem;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    new-instance v3, Lii;

    .line 56
    .line 57
    const/16 v4, 0x15

    .line 58
    .line 59
    invoke-direct {v3, v4}, Lii;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1, p0, v3}, Lokio/internal/ZipFilesKt;->c(Lokio/Path;Lokio/FileSystem;Lkotlin/jvm/functions/Function1;)Lokio/ZipFileSystem;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const/16 p1, 0x1c

    .line 67
    .line 68
    invoke-static {v0, p0, v5, v5, p1}, Lcoil3/decode/ImageSourceKt;->a(Lokio/Path;Lokio/FileSystem;Ljava/lang/String;Lcoil3/disk/DiskCache$Snapshot;I)Lcoil3/decode/FileImageSource;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {v0}, Lokio/Path;->b()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const/16 v0, 0x2e

    .line 77
    .line 78
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->M(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1}, Lcoil3/util/MimeTypeMap;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    sget-object v0, Lcoil3/decode/DataSource;->l:Lcoil3/decode/DataSource;

    .line 87
    .line 88
    invoke-direct {v2, p0, p1, v0}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 89
    .line 90
    .line 91
    return-object v2

    .line 92
    :cond_1
    const-string p0, "Invalid jar:file URI: "

    .line 93
    .line 94
    invoke-static {p1, p0}, Lk8;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-object v5
.end method
