.class public final Lcoil3/disk/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/disk/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation


# instance fields
.field public final a:Lcoil3/disk/DiskLruCache$Entry;

.field public b:Z

.field public final c:[Z

.field public final synthetic d:Lcoil3/disk/DiskLruCache;


# direct methods
.method public constructor <init>(Lcoil3/disk/DiskLruCache;Lcoil3/disk/DiskLruCache$Entry;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/disk/DiskLruCache$Editor;->d:Lcoil3/disk/DiskLruCache;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/disk/DiskLruCache$Editor;->a:Lcoil3/disk/DiskLruCache$Entry;

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    new-array p1, p1, [Z

    .line 10
    .line 11
    iput-object p1, p0, Lcoil3/disk/DiskLruCache$Editor;->c:[Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil3/disk/DiskLruCache$Editor;->d:Lcoil3/disk/DiskLruCache;

    .line 2
    .line 3
    iget-object v1, v0, Lcoil3/disk/DiskLruCache;->q:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-boolean v2, p0, Lcoil3/disk/DiskLruCache$Editor;->b:Z

    .line 7
    .line 8
    if-nez v2, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Lcoil3/disk/DiskLruCache$Editor;->a:Lcoil3/disk/DiskLruCache$Entry;

    .line 11
    .line 12
    iget-object v2, v2, Lcoil3/disk/DiskLruCache$Entry;->g:Lcoil3/disk/DiskLruCache$Editor;

    .line 13
    .line 14
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-static {v0, p0, p1}, Lcoil3/disk/DiskLruCache;->a(Lcoil3/disk/DiskLruCache;Lcoil3/disk/DiskLruCache$Editor;Z)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcoil3/disk/DiskLruCache$Editor;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 31
    :cond_1
    :try_start_1
    const-string p0, "editor is closed"

    .line 32
    .line 33
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :goto_1
    monitor-exit v1

    .line 40
    throw p0
.end method

.method public final b(I)Lokio/Path;
    .locals 4

    .line 1
    iget-object v0, p0, Lcoil3/disk/DiskLruCache$Editor;->d:Lcoil3/disk/DiskLruCache;

    .line 2
    .line 3
    iget-object v1, v0, Lcoil3/disk/DiskLruCache;->q:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-boolean v2, p0, Lcoil3/disk/DiskLruCache$Editor;->b:Z

    .line 7
    .line 8
    if-nez v2, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Lcoil3/disk/DiskLruCache$Editor;->c:[Z

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    aput-boolean v3, v2, p1

    .line 14
    .line 15
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$Editor;->a:Lcoil3/disk/DiskLruCache$Entry;

    .line 16
    .line 17
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$Entry;->d:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    iget-object p1, v0, Lcoil3/disk/DiskLruCache;->z:Lcoil3/disk/DiskLruCache$fileSystem$1;

    .line 24
    .line 25
    move-object v0, p0

    .line 26
    check-cast v0, Lokio/Path;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lokio/FileSystem;->A(Lokio/Path;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {p1, v0, v2}, Lcoil3/disk/DiskLruCache$fileSystem$1;->S(Lokio/Path;Z)Lokio/Sink;

    .line 36
    .line 37
    .line 38
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :try_start_1
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    :try_start_2
    throw p0

    .line 45
    :catch_1
    :cond_0
    :goto_0
    check-cast p0, Lokio/Path;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    .line 47
    monitor-exit v1

    .line 48
    return-object p0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    :try_start_3
    const-string p0, "editor is closed"

    .line 52
    .line 53
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    :goto_1
    monitor-exit v1

    .line 60
    throw p0
.end method
