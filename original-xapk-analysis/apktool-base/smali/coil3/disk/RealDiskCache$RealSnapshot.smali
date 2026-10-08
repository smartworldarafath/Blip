.class final Lcoil3/disk/RealDiskCache$RealSnapshot;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/disk/DiskCache$Snapshot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/disk/RealDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RealSnapshot"
.end annotation


# instance fields
.field public final j:Lcoil3/disk/DiskLruCache$Snapshot;


# direct methods
.method public constructor <init>(Lcoil3/disk/DiskLruCache$Snapshot;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/disk/RealDiskCache$RealSnapshot;->j:Lcoil3/disk/DiskLruCache$Snapshot;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b0()Lcoil3/disk/DiskCache$Editor;
    .locals 2

    .line 1
    iget-object p0, p0, Lcoil3/disk/RealDiskCache$RealSnapshot;->j:Lcoil3/disk/DiskLruCache$Snapshot;

    .line 2
    .line 3
    iget-object v0, p0, Lcoil3/disk/DiskLruCache$Snapshot;->l:Lcoil3/disk/DiskLruCache;

    .line 4
    .line 5
    iget-object v1, v0, Lcoil3/disk/DiskLruCache;->q:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache$Snapshot;->close()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$Snapshot;->j:Lcoil3/disk/DiskLruCache$Entry;

    .line 12
    .line 13
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$Entry;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcoil3/disk/DiskLruCache;->h(Ljava/lang/String;)Lcoil3/disk/DiskLruCache$Editor;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit v1

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    new-instance v0, Lcoil3/disk/RealDiskCache$RealEditor;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcoil3/disk/RealDiskCache$RealEditor;-><init>(Lcoil3/disk/DiskLruCache$Editor;)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return-object p0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v1

    .line 32
    throw p0
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/disk/RealDiskCache$RealSnapshot;->j:Lcoil3/disk/DiskLruCache$Snapshot;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache$Snapshot;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e()Lokio/Path;
    .locals 1

    .line 1
    iget-object p0, p0, Lcoil3/disk/RealDiskCache$RealSnapshot;->j:Lcoil3/disk/DiskLruCache$Snapshot;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcoil3/disk/DiskLruCache$Snapshot;->k:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$Snapshot;->j:Lcoil3/disk/DiskLruCache$Entry;

    .line 8
    .line 9
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$Entry;->c:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lokio/Path;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    const-string p0, "snapshot is closed"

    .line 20
    .line 21
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public final g()Lokio/Path;
    .locals 1

    .line 1
    iget-object p0, p0, Lcoil3/disk/RealDiskCache$RealSnapshot;->j:Lcoil3/disk/DiskLruCache$Snapshot;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcoil3/disk/DiskLruCache$Snapshot;->k:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$Snapshot;->j:Lcoil3/disk/DiskLruCache$Entry;

    .line 8
    .line 9
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$Entry;->c:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lokio/Path;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    const-string p0, "snapshot is closed"

    .line 20
    .line 21
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method
