.class public final Lcoil3/fetch/ByteBufferFetcher;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/fetch/Fetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/fetch/ByteBufferFetcher$Factory;
    }
.end annotation


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field public final b:Lcoil3/request/Options;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Lcoil3/request/Options;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/fetch/ByteBufferFetcher;->a:Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/fetch/ByteBufferFetcher;->b:Lcoil3/request/Options;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance p1, Lcoil3/fetch/SourceFetchResult;

    .line 2
    .line 3
    new-instance v0, Lcoil3/fetch/ByteBufferFetcherKt$asSource$1;

    .line 4
    .line 5
    iget-object v1, p0, Lcoil3/fetch/ByteBufferFetcher;->a:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcoil3/fetch/ByteBufferFetcherKt$asSource$1;-><init>(Ljava/nio/ByteBuffer;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lokio/RealBufferedSource;

    .line 11
    .line 12
    invoke-direct {v2, v0}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcoil3/fetch/ByteBufferFetcher;->b:Lcoil3/request/Options;

    .line 16
    .line 17
    iget-object p0, p0, Lcoil3/request/Options;->f:Lokio/FileSystem;

    .line 18
    .line 19
    new-instance v0, Lcoil3/decode/ByteBufferMetadata;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcoil3/decode/ByteBufferMetadata;-><init>(Ljava/nio/ByteBuffer;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcoil3/decode/SourceImageSource;

    .line 25
    .line 26
    invoke-direct {v1, v2, p0, v0}, Lcoil3/decode/SourceImageSource;-><init>(Lokio/BufferedSource;Lokio/FileSystem;Lcoil3/decode/ImageSource$Metadata;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    sget-object v0, Lcoil3/decode/DataSource;->k:Lcoil3/decode/DataSource;

    .line 31
    .line 32
    invoke-direct {p1, v1, p0, v0}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 33
    .line 34
    .line 35
    return-object p1
.end method
