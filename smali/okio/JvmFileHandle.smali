.class public final Lokio/JvmFileHandle;
.super Lokio/FileHandle;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final m:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokio/FileHandle;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokio/JvmFileHandle;->m:Ljava/io/RandomAccessFile;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(J[BII)I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lokio/JvmFileHandle;->m:Ljava/io/RandomAccessFile;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    :goto_0
    if-ge p1, p5, :cond_1

    .line 12
    .line 13
    iget-object p2, p0, Lokio/JvmFileHandle;->m:Ljava/io/RandomAccessFile;

    .line 14
    .line 15
    sub-int v0, p5, p1

    .line 16
    .line 17
    invoke-virtual {p2, p3, p4, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 18
    .line 19
    .line 20
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    const/4 v0, -0x1

    .line 22
    if-ne p2, v0, :cond_0

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return v0

    .line 28
    :cond_0
    add-int/2addr p1, p2

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    monitor-exit p0

    .line 33
    return p1

    .line 34
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p1
.end method
