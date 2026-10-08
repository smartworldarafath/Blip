.class public final Lcoil3/disk/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/disk/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field public final j:Lcoil3/disk/DiskLruCache$Entry;

.field public k:Z

.field public final synthetic l:Lcoil3/disk/DiskLruCache;


# direct methods
.method public constructor <init>(Lcoil3/disk/DiskLruCache;Lcoil3/disk/DiskLruCache$Entry;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/disk/DiskLruCache$Snapshot;->l:Lcoil3/disk/DiskLruCache;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/disk/DiskLruCache$Snapshot;->j:Lcoil3/disk/DiskLruCache$Entry;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcoil3/disk/DiskLruCache$Snapshot;->k:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcoil3/disk/DiskLruCache$Snapshot;->k:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcoil3/disk/DiskLruCache$Snapshot;->l:Lcoil3/disk/DiskLruCache;

    .line 9
    .line 10
    iget-object v1, v0, Lcoil3/disk/DiskLruCache;->q:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$Snapshot;->j:Lcoil3/disk/DiskLruCache$Entry;

    .line 14
    .line 15
    iget v2, p0, Lcoil3/disk/DiskLruCache$Entry;->h:I

    .line 16
    .line 17
    add-int/lit8 v2, v2, -0x1

    .line 18
    .line 19
    iput v2, p0, Lcoil3/disk/DiskLruCache$Entry;->h:I

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    iget-boolean v2, p0, Lcoil3/disk/DiskLruCache$Entry;->f:Z

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Lcoil3/disk/DiskLruCache;->P(Lcoil3/disk/DiskLruCache$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    monitor-exit v1

    .line 34
    return-void

    .line 35
    :goto_1
    monitor-exit v1

    .line 36
    throw p0

    .line 37
    :cond_1
    return-void
.end method
