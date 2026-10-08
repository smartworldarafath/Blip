.class public final Lcoil3/fetch/AssetUriFetcher;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/fetch/Fetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/fetch/AssetUriFetcher$Factory;
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
    iput-object p1, p0, Lcoil3/fetch/AssetUriFetcher;->a:Lcoil3/Uri;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/fetch/AssetUriFetcher;->b:Lcoil3/request/Options;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object p1, p0, Lcoil3/fetch/AssetUriFetcher;->a:Lcoil3/Uri;

    .line 2
    .line 3
    invoke-static {p1}, Lcoil3/UriKt;->c(Lcoil3/Uri;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->p(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v4, 0x0

    .line 12
    const/16 v5, 0x3e

    .line 13
    .line 14
    const-string v1, "/"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->y(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Lcoil3/fetch/SourceFetchResult;

    .line 23
    .line 24
    iget-object p0, p0, Lcoil3/fetch/AssetUriFetcher;->b:Lcoil3/request/Options;

    .line 25
    .line 26
    iget-object v1, p0, Lcoil3/request/Options;->a:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Lokio/Okio;->e(Ljava/io/InputStream;)Lokio/Source;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v2, Lokio/RealBufferedSource;

    .line 41
    .line 42
    invoke-direct {v2, v1}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcoil3/request/Options;->f:Lokio/FileSystem;

    .line 46
    .line 47
    new-instance v1, Lcoil3/decode/AssetMetadata;

    .line 48
    .line 49
    invoke-direct {v1, p1}, Lcoil3/decode/AssetMetadata;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v3, Lcoil3/decode/SourceImageSource;

    .line 53
    .line 54
    invoke-direct {v3, v2, p0, v1}, Lcoil3/decode/SourceImageSource;-><init>(Lokio/BufferedSource;Lokio/FileSystem;Lcoil3/decode/ImageSource$Metadata;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lcoil3/util/MimeTypeMap;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    sget-object p1, Lcoil3/decode/DataSource;->l:Lcoil3/decode/DataSource;

    .line 62
    .line 63
    invoke-direct {v0, v3, p0, p1}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 64
    .line 65
    .line 66
    return-object v0
.end method
