.class public final Lcoil3/disk/RealDiskCache;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/disk/DiskCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/disk/RealDiskCache$RealEditor;,
        Lcoil3/disk/RealDiskCache$RealSnapshot;
    }
.end annotation


# instance fields
.field public final a:Lokio/FileSystem;

.field public final b:Lcoil3/disk/DiskLruCache;


# direct methods
.method public constructor <init>(JLkotlin/coroutines/CoroutineContext;Lokio/FileSystem;Lokio/Path;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcoil3/disk/RealDiskCache;->a:Lokio/FileSystem;

    .line 5
    .line 6
    new-instance v0, Lcoil3/disk/DiskLruCache;

    .line 7
    .line 8
    move-wide v1, p1

    .line 9
    move-object v3, p3

    .line 10
    move-object v4, p4

    .line 11
    move-object v5, p5

    .line 12
    invoke-direct/range {v0 .. v5}, Lcoil3/disk/DiskLruCache;-><init>(JLkotlin/coroutines/CoroutineContext;Lokio/FileSystem;Lokio/Path;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcoil3/disk/RealDiskCache;->b:Lcoil3/disk/DiskLruCache;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcoil3/disk/DiskCache$Editor;
    .locals 1

    .line 1
    sget-object v0, Lokio/ByteString;->m:Lokio/ByteString;

    .line 2
    .line 3
    invoke-static {p1}, Lokio/ByteString$Companion;->b(Ljava/lang/String;)Lokio/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "SHA-256"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lokio/ByteString;->d(Ljava/lang/String;)Lokio/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lokio/ByteString;->f()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p0, p0, Lcoil3/disk/RealDiskCache;->b:Lcoil3/disk/DiskLruCache;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcoil3/disk/DiskLruCache;->h(Ljava/lang/String;)Lcoil3/disk/DiskLruCache$Editor;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    new-instance p1, Lcoil3/disk/RealDiskCache$RealEditor;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Lcoil3/disk/RealDiskCache$RealEditor;-><init>(Lcoil3/disk/DiskLruCache$Editor;)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcoil3/disk/DiskCache$Snapshot;
    .locals 1

    .line 1
    sget-object v0, Lokio/ByteString;->m:Lokio/ByteString;

    .line 2
    .line 3
    invoke-static {p1}, Lokio/ByteString$Companion;->b(Ljava/lang/String;)Lokio/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "SHA-256"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lokio/ByteString;->d(Ljava/lang/String;)Lokio/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lokio/ByteString;->f()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p0, p0, Lcoil3/disk/RealDiskCache;->b:Lcoil3/disk/DiskLruCache;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcoil3/disk/DiskLruCache;->n(Ljava/lang/String;)Lcoil3/disk/DiskLruCache$Snapshot;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    new-instance p1, Lcoil3/disk/RealDiskCache$RealSnapshot;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Lcoil3/disk/RealDiskCache$RealSnapshot;-><init>(Lcoil3/disk/DiskLruCache$Snapshot;)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method
