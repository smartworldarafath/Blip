.class public final Lcoil3/fetch/ByteArrayFetcher;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/fetch/Fetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/fetch/ByteArrayFetcher$Factory;
    }
.end annotation


# instance fields
.field public final a:[B

.field public final b:Lcoil3/request/Options;


# direct methods
.method public constructor <init>([BLcoil3/request/Options;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/fetch/ByteArrayFetcher;->a:[B

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/fetch/ByteArrayFetcher;->b:Lcoil3/request/Options;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance p1, Lokio/Buffer;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcoil3/fetch/ByteArrayFetcher;->a:[B

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    array-length v1, v0

    .line 12
    invoke-virtual {p1, v1, v0}, Lokio/Buffer;->X(I[B)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcoil3/fetch/ByteArrayFetcher;->b:Lcoil3/request/Options;

    .line 16
    .line 17
    iget-object p0, p0, Lcoil3/request/Options;->f:Lokio/FileSystem;

    .line 18
    .line 19
    new-instance v0, Lcoil3/decode/SourceImageSource;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {v0, p1, p0, v1}, Lcoil3/decode/SourceImageSource;-><init>(Lokio/BufferedSource;Lokio/FileSystem;Lcoil3/decode/ImageSource$Metadata;)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lcoil3/decode/DataSource;->k:Lcoil3/decode/DataSource;

    .line 26
    .line 27
    new-instance p1, Lcoil3/fetch/SourceFetchResult;

    .line 28
    .line 29
    invoke-direct {p1, v0, v1, p0}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 30
    .line 31
    .line 32
    return-object p1
.end method
