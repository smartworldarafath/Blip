.class public final Lcoil3/video/MediaDataSourceFetcher;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/fetch/Fetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/video/MediaDataSourceFetcher$Factory;,
        Lcoil3/video/MediaDataSourceFetcher$MediaDataSourceOkioSource;,
        Lcoil3/video/MediaDataSourceFetcher$MediaSourceMetadata;
    }
.end annotation


# instance fields
.field public final a:Landroid/media/MediaDataSource;

.field public final b:Lcoil3/request/Options;


# direct methods
.method public constructor <init>(Landroid/media/MediaDataSource;Lcoil3/request/Options;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/video/MediaDataSourceFetcher;->a:Landroid/media/MediaDataSource;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/video/MediaDataSourceFetcher;->b:Lcoil3/request/Options;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance p1, Lcoil3/video/MediaDataSourceFetcher$MediaDataSourceOkioSource;

    .line 2
    .line 3
    iget-object v0, p0, Lcoil3/video/MediaDataSourceFetcher;->a:Landroid/media/MediaDataSource;

    .line 4
    .line 5
    invoke-direct {p1, v0}, Lcoil3/video/MediaDataSourceFetcher$MediaDataSourceOkioSource;-><init>(Landroid/media/MediaDataSource;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lokio/RealBufferedSource;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcoil3/video/MediaDataSourceFetcher;->b:Lcoil3/request/Options;

    .line 14
    .line 15
    iget-object p0, p0, Lcoil3/request/Options;->f:Lokio/FileSystem;

    .line 16
    .line 17
    new-instance p1, Lcoil3/video/MediaDataSourceFetcher$MediaSourceMetadata;

    .line 18
    .line 19
    invoke-direct {p1, v0}, Lcoil3/video/MediaDataSourceFetcher$MediaSourceMetadata;-><init>(Landroid/media/MediaDataSource;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcoil3/decode/SourceImageSource;

    .line 23
    .line 24
    invoke-direct {v0, v1, p0, p1}, Lcoil3/decode/SourceImageSource;-><init>(Lokio/BufferedSource;Lokio/FileSystem;Lcoil3/decode/ImageSource$Metadata;)V

    .line 25
    .line 26
    .line 27
    new-instance p0, Lcoil3/fetch/SourceFetchResult;

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    sget-object v1, Lcoil3/decode/DataSource;->l:Lcoil3/decode/DataSource;

    .line 31
    .line 32
    invoke-direct {p0, v0, p1, v1}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 33
    .line 34
    .line 35
    return-object p0
.end method
