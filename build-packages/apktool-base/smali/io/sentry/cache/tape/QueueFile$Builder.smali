.class public final Lio/sentry/cache/tape/QueueFile$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/cache/tape/QueueFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Ljava/io/File;

.field public b:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lio/sentry/cache/tape/QueueFile$Builder;->b:I

    .line 6
    .line 7
    iput-object p1, p0, Lio/sentry/cache/tape/QueueFile$Builder;->a:Ljava/io/File;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()Lio/sentry/cache/tape/QueueFile;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/cache/tape/QueueFile$Builder;->a:Ljava/io/File;

    .line 2
    .line 3
    invoke-static {v0}, Lio/sentry/cache/tape/QueueFile;->A(Ljava/io/File;)Ljava/io/RandomAccessFile;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :try_start_0
    new-instance v2, Lio/sentry/cache/tape/QueueFile;

    .line 8
    .line 9
    iget p0, p0, Lio/sentry/cache/tape/QueueFile$Builder;->b:I

    .line 10
    .line 11
    invoke-direct {v2, v0, v1, p0}, Lio/sentry/cache/tape/QueueFile;-><init>(Ljava/io/File;Ljava/io/RandomAccessFile;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    return-object v2

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 17
    .line 18
    .line 19
    throw p0
.end method
