.class final Lcoil3/disk/RealDiskCache$RealEditor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/disk/DiskCache$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/disk/RealDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RealEditor"
.end annotation


# instance fields
.field public final a:Lcoil3/disk/DiskLruCache$Editor;


# direct methods
.method public constructor <init>(Lcoil3/disk/DiskLruCache$Editor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/disk/RealDiskCache$RealEditor;->a:Lcoil3/disk/DiskLruCache$Editor;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lcoil3/disk/DiskCache$Snapshot;
    .locals 3

    .line 1
    iget-object p0, p0, Lcoil3/disk/RealDiskCache$RealEditor;->a:Lcoil3/disk/DiskLruCache$Editor;

    .line 2
    .line 3
    iget-object v0, p0, Lcoil3/disk/DiskLruCache$Editor;->d:Lcoil3/disk/DiskLruCache;

    .line 4
    .line 5
    iget-object v1, v0, Lcoil3/disk/DiskLruCache;->q:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    const/4 v2, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0, v2}, Lcoil3/disk/DiskLruCache$Editor;->a(Z)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$Editor;->a:Lcoil3/disk/DiskLruCache$Entry;

    .line 13
    .line 14
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$Entry;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcoil3/disk/DiskLruCache;->n(Ljava/lang/String;)Lcoil3/disk/DiskLruCache$Snapshot;

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v1

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    new-instance v0, Lcoil3/disk/RealDiskCache$RealSnapshot;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcoil3/disk/RealDiskCache$RealSnapshot;-><init>(Lcoil3/disk/DiskLruCache$Snapshot;)V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return-object p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v1

    .line 33
    throw p0
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcoil3/disk/RealDiskCache$RealEditor;->a:Lcoil3/disk/DiskLruCache$Editor;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcoil3/disk/DiskLruCache$Editor;->a(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final e()Lokio/Path;
    .locals 1

    .line 1
    iget-object p0, p0, Lcoil3/disk/RealDiskCache$RealEditor;->a:Lcoil3/disk/DiskLruCache$Editor;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcoil3/disk/DiskLruCache$Editor;->b(I)Lokio/Path;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final g()Lokio/Path;
    .locals 1

    .line 1
    iget-object p0, p0, Lcoil3/disk/RealDiskCache$RealEditor;->a:Lcoil3/disk/DiskLruCache$Editor;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcoil3/disk/DiskLruCache$Editor;->b(I)Lokio/Path;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method
